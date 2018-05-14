class User < ApplicationRecord


  before_save { self.email = email.downcase } #AR callback
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  has_secure_password

  #validates :telephone, length: { maximum: 10 }
  validates :address, length: { maximum: 100 }
  validates :payment, length: { maximum: 16 }
  
  has_many :orders
end

#presence: true,
