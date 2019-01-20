class Comment < ActiveRecord::Base
    validates :body, length: { minimum: 2 }
    validates :body, length: { maximum: 500 }
    belongs_to :post
    acts_as_votable
    def score
        self.get_upvotes.size - self.get_downvotes.size
    end
end