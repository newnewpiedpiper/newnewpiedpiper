class Post < ActiveRecord::Base
  validates :title, length: { minimum: 2 }
  validates :title, length: { maximum: 200 }
    has_many :comments, dependent: :destroy
end
