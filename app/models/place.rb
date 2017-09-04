class Place < ActiveRecord::Base
  extend FriendlyId
  friendly_id :business_name, use: :slugged
  ratyrate_rateable "accessibility", "dateworthiness", "babyfriendly", "familyfriendly", "handicapfriendly", "friendsrecommend", "food-quality", "service", "worth-the-price"
  
  scope :publish, -> {
    where(:draft => false)
  }
  scope :pending, -> {
    where(:draft => true)
  }
  
  before_create :set_expiration_date
  before_create :set_halal_expiry
  after_create :send_admin_email
  after_create :send_merchant_listing_email
  
  def send_admin_email
    AdminNotifier.new_place_notification(self.merchant).deliver
  end
  
  def send_merchant_listing_email
    MerchantListingMailer.send_merchant_listing_email(self.merchant).deliver
  end
  
  def set_expiration_date
    self.expiry_date =  Date.today + 365.days
  end
  
  def set_halal_expiry
    self.halal_expiry =  Date.today + 365.days
  end

  validates_presence_of :merchant_id
  validates_presence_of :business_name
  validates_presence_of :general_contact_number
  validates_presence_of :operating_address
  validates_presence_of :location
  validates_presence_of :region
  validates_presence_of :listing_id

  acts_as_likeable
  belongs_to :merchant
  belongs_to :qualifying_type
  belongs_to :place_type
  belongs_to :location
  belongs_to :price_range
  belongs_to :region
  belongs_to :friends_reward
  belongs_to :verifying_type
  belongs_to :listing
  has_many :highlights, :through => :features, dependent: :destroy
  has_many :features, dependent: :destroy
  has_many :places_menus, :through => :places_menus_categories
  has_many :places_menus_categories, dependent: :destroy
  has_many :special_tags, :through => :admin_tags, dependent: :destroy
  has_many :admin_tags, dependent: :destroy
  has_many :cuisine_types, :through => :menu_types, dependent: :destroy
  has_many :menu_types, dependent: :destroy
  has_many :dining_types, :through => :eateries, dependent: :destroy
  has_many :eateries, dependent: :destroy
  has_many  :opening_hours, dependent: :destroy, inverse_of: :place
  accepts_nested_attributes_for  :opening_hours, reject_if: :all_blank, allow_destroy: true
  has_many :comments, dependent: :destroy

  has_attached_file :logo, styles: { large: "300x300>", medium: "120x120>", thumb: "30x30>" }, default_url: "/images/:style/placeholder.png"
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/
  
  has_attached_file :featured_image, styles: { large: "800x500#", medium: "450x300>", square: "500x500#", thumb: "100x67>" }, default_url: "/images/:style/image-placeholder.jpg"
  validates_attachment_content_type :featured_image, content_type: /\Aimage\/.*\Z/
  
  has_attached_file :image, styles: { large: "800x500>", medium: "450x300>", square: "500x500#", thumb: "100x67>" }, default_url: "/images/:style/image-placeholder.jpg"
  validates_attachment_content_type :image, content_type: ["image/jpg", "image/jpeg", "image/png", ]
  
  has_attached_file :image_2, styles: { large: "800x500>", medium: "450x300>", square: "500x500#", thumb: "100x67>" }, default_url: "/images/:style/image-placeholder.jpg"
  validates_attachment_content_type :image_2, content_type: ["image/jpg", "image/jpeg", "image/png", ]
  
  has_attached_file :image_3, styles: { large: "800x500>", medium: "450x300>", square: "500x500#", thumb: "100x67>" }, default_url: "/images/:style/image-placeholder.jpg"
  validates_attachment_content_type :image_3, content_type: ["image/jpg", "image/jpeg", "image/png", ]
  
  has_attached_file :image_4, styles: { large: "800x500>", medium: "450x300>", square: "500x500#", thumb: "100x67>" }, default_url: "/images/:style/image-placeholder.jpg"
  validates_attachment_content_type :image_4, content_type: ["image/jpg", "image/jpeg", "image/png", ]
  
  has_attached_file :document_1, styles: { large: "2480x3508>", medium: "500x800>", square: "500x500>", thumb: "67x100>" }, default_url: "/images/:style/image-placeholder.jpg"
  validates_attachment_content_type :document_1, content_type: /\Aimage\/.*\Z/

  has_attached_file :document_2, styles: { large: "2480x3508>", medium: "500x800>", square: "500x500>", thumb: "67x100>" }, default_url: "/images/:style/image-placeholder.jpg"
  validates_attachment_content_type :document_2, content_type: /\Aimage\/.*\Z/

  has_attached_file :document_3, styles: { large: "2480x3508>", medium: "500x800>", square: "500x500>", thumb: "67x100>" }, default_url: "/images/:style/image-placeholder.jpg"
  validates_attachment_content_type :document_3, content_type: /\Aimage\/.*\Z/

  has_attached_file :document_4, styles: { large: "2480x3508>", medium: "500x800>", square: "500x500>", thumb: "67x100>" }, default_url: "/images/:style/image-placeholder.jpg"
  validates_attachment_content_type :document_4, content_type: /\Aimage\/.*\Z/
  
  geocoded_by :operating_address
	after_validation :geocode, :if => :operating_address_changed?
end
