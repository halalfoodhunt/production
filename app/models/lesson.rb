class Lesson < ActiveRecord::Base
  extend FriendlyId
  friendly_id :brand_name, use: :slugged
  
  before_create :set_expiration_date
  after_create :send_admin_email
  
  def send_admin_email
    AdminNotifier.new_place_notification(self.merchant).deliver
  end
  
  def set_expiration_date
    self.expiry_date =  Date.today + 365.days
  end

    validates_presence_of :merchant_id
    validates_presence_of :brand_name
	  validates_presence_of :general_contact_number
    validates_presence_of :location
    validates_presence_of :region
    
    belongs_to :merchant
    belongs_to :listing
    belongs_to :location
    belongs_to :region
    belongs_to :friends_reward
    has_many :class_types, :through => :course_types
    has_many :course_types
    has_many :lesson_types, :through => :teaching_types
    has_many :teaching_types
    has_many :culinary_skills, :through => :cooking_skills
    has_many :cooking_skills
  
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
  
end