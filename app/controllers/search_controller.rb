class SearchController < ApplicationController
  def search
      if params[:search].blank?  
        redirect_to(root_path, alert: "Empty field!") and return  
      else 
        @search = Post.search do
          fulltext params[:search]
        end
        #@results = Post.all.where("title = ?", @parameter)
        @results = @search.results
      end  
  end
end
