class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation
  has_and_belongs_to_many :mixtapes
  has_secure_password
  
  validates :email, :uniqueness => true
  validates :name, :length => { :minimum => 6 }
  
  validate :check_email_address
  
  def check_email_address
    if !email.include?('@')
      errors.add(:email, 'does not contain an @ symbol')
    end
  end
end
