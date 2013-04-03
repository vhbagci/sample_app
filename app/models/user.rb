class User < ActiveRecord::Base
  attr_accessible :name, :email

  validates :name,  :presence => true, length: { maximum: 50 } 
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[\w+\-.]+\.[a-z]+\z/i
  validates :email, :presence => true, format: { with: VALID_EMAIL_REGEX },
  					uniqueness: { case_sensitive: false }
  # Şekerbilişim REGEX: /\A\w+\.\w+@(cs.com.tr|sekerbilisim.com.tr)\z/i
end
