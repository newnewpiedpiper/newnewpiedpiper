class User < ActiveRecord::Base
  before_save { email.downcase! }
  validates :name, presence: true
  validates :email, presence: true
  validates :name,  presence: true, length: { maximum: 50 }
  validates :username,  presence: true, length: { maximum: 50 }, 
                        uniqueness: { case_sensitive: false }
  validates :email, presence: true, length: { maximum: 255 }
  
  #REGEX wasn't working here
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  # validates :email, presence: true, length: { maximum: 255 },
  #                   format: { with: VALID_EMAIL_REGEX },
  #                   uniqueness: { case_sensitive: false }
                    
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  has_many :favorites, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :upvotes, dependent: :destroy
  
   def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
   end
  
  def to_param
    username
  end
end
