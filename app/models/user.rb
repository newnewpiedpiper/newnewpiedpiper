class User < ActiveRecord::Base
  before_save { email.downcase! }
  validates :name, presence: true
  validates :email, presence: true
  validates :name,  presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 }
  
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
                    
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  has_many :favorites, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :upvotes, dependent: :destroy
end
