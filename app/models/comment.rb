class Comment < ActiveRecord::Base
    validates :body, length: { minimum: 2 }
    validates :body, length: { maximum: 500 }
    belongs_to :post
end