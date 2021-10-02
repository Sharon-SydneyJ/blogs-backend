class BlogpostsController < ApplicationController


     # GET /blogposts
  def index
    blogposts = Blogpost.all.order(content: :desc)
    render json: blogposts, include: :comments
  end

end
