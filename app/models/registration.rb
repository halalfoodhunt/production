class Registration < ActiveRecord::Base
  belongs_to :friends_card
  belongs_to :friend
  has_one :card
  accepts_nested_attributes_for :card
  
  validates :name, :date_of_birth,  :contact_number, :instagram_account, :address_1, :zipcode, presence: true
  
  before_create :set_expiration_date
  after_create :send_new_friends_card_purchase_email
  
  def set_expiration_date
    self.expiry_date =  Date.today + 365.days
  end
    
  def send_new_friends_card_purchase_email
    FriendCardNotifier.new_friends_card_purchase_notification(self).deliver
  end

  serialize :notification_params, Hash
  def paypal_url(return_path)
    values = {
        business: "halalfoodhunt@gmail.com",
        currency_code: "SGD",
        upload: 1,
        no_shipping: 1,
        return: "#{Rails.application.secrets.app_host}#{return_path}",
        notify_url: "#{Rails.application.secrets.app_host}/hook",
        invoice: id,
        item_name: friends_card.name
    }
    values = if friends_card.recurring
               values.merge(
                   cmd: "_xclick-subscriptions",
                   a3: friends_card.price,
                   p3: 1,
                   srt: friends_card.cycles,
                   t3: friends_card.period.first
               )
             else
               values.merge(
                   cmd: "_xclick",
                   amount: friends_card.price,
                   item_number: friends_card.id,
                   quantity: '1'
               )
             end

    "#{Rails.application.secrets.paypal_host}/cgi-bin/webscr?" + values.to_query
  end

  def payment_method
    "paypal"
  end
end
