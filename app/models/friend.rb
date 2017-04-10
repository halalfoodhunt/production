class Friend < ActiveRecord::Base
  acts_as_commontator
  acts_as_liker
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  enum role: [:free, :friends]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :free
  end
  
  has_attached_file :avatar, styles: { large: "300x300>", medium: "120x120>", thumb: "30x30>" }, default_url: "/images/:style/placeholder.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
