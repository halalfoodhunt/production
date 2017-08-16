class Registration < ActiveRecord::Base
  belongs_to :friends_card
  has_one :card
  accepts_nested_attributes_for :card

  validates :full_name, :company, :email, :telephone, presence: true

  serialize :notification_params, Hash
  def paypal_url(return_path)
    values = {
        business: "halalfoodhunt@gmail.com",
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
    if card.first_name.empty? then "paypal"; else "card"; end
  end
end
