class Friend < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  enum role: [:free, :friends]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :free
  end
end