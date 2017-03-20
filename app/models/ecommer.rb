class Ecommer < ActiveRecord::Base
  extend FriendlyId
  friendly_id :business_name, use: :slugged
  
  before_create :set_expiration_date
  after_create :send_admin_email
  
  def send_admin_email
    AdminNotifier.new_place_notification(self.merchant).deliver
  end
    
  def set_expiration_date
    self.expiry_date =  Date.today + 365.days
  end

    validates_presence_of :merchant_id
    validates_presence_of :business_name
	  validates_presence_of :general_contact_number
  	validates_presence_of :operating_address
    validates_presence_of :location
    validates_presence_of :region
    
    belongs_to :merchant
    belongs_to :listing
    belongs_to :qualifying_type
    belongs_to :location
    belongs_to :price_range
    belongs_to :establishment_type
    belongs_to :region
    belongs_to :friends_reward
    has_many :food_items, :through => :food_products
    has_many :food_products
    has_many :service_types, :through => :service_categories
    has_many :service_categories
    has_many :cuisine_types, :through => :menu_types
    has_many :menu_types
    has_many :food_types, :through => :dish_types
    has_many :dish_types
    
  
  has_attached_file :logo, styles: { large: "300x300>", medium: "120x120>", thumb: "30x30>" }, default_url: "/images/:style/placeholder.png"
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/
  
  has_attached_file :featured_image, styles: { large: "800x300#", medium: "800x500#", square: "500x500#", thumb: "100x67>" }, default_url: "/images/:style/image-placeholder.jpg"
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
        
end
