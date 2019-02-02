class Comment < ActiveRecord::Base
    validates :body, length: { minimum: 2 }
    validates :body, length: { maximum: 500 }
    validates :user_id, presence: true
    belongs_to :user
    belongs_to :post
    belongs_to :comment
    belongs_to :commentable, :polymorphic => true
    has_many :comments, :as => :commentable
    acts_as_votable
    
    def score
        self.get_upvotes.size - self.get_downvotes.size
    end
end