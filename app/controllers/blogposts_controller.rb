class BlogpostsController < ApplicationController


     # GET /blogposts
  def index
    blogposts = Blogpost.all.order(content: :desc)
    render json: blogposts, include: :comments
  end

  # GET /blogposts/:id
    def show
    blogpost = Blogpost.find_by(id: params[:id])
      render json: blogpost, methods: [:summary], include: [:user, :comments]
    
    end

    

end
