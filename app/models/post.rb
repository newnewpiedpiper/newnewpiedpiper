class Post < ActiveRecord::Base
  
  searchable do 
    text :title, :content
  end 
  validates :title, length: { minimum: 2 }
  validates :title, length: { maximum: 200 }
    has_many :comments, as: :commentable
    acts_as_votable
    def score
        self.get_upvotes.size - self.get_downvotes.size
    end
end
