class Merchant < ActiveRecord::Base
# Added by Koudoku.
  enum role: [:free, :basic, :basic_plus, :social, :admin]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :free
  end
  
  after_create :send_new_listing_notification
  def send_new_listing_notification
    MerchantNotifier.send_new_listing_notification.deliver
  end
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  validates_presence_of :registered_business_name
  validates_presence_of :contact_person_name
  validates_presence_of :office_number
  validates_presence_of :mobile_number
  validates_presence_of :office_mailing_address
  
  has_many :listings
  has_many :places
  has_many :ecommers
  has_many :caterers
  has_many :lessons
  has_many :food_deliveries
  has_many :supermarkets
  has_many :online_grocers
  has_many :suppliers
  has_one :subscription
  belongs_to :region
  
  has_attached_file :logo, styles: { large: "300x300>", medium: "120x120>", thumb: "30x30>" }, default_url: "/images/:style/placeholder.png"
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/

end
