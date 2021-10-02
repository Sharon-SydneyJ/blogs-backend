class UsersController < ApplicationController
   
    
    
    # GET /users
  def index
    users = User.all
    render json: users
  end

  # GET /users/:id
    def show
    user = User.find(params[:id])
    render json: user
  end

  # Post/users/:id
def create
    user = User.create(user_params)
    render json: user, status: :created
  end

  private


  def user_params
    params.permit(:first_name, :last_name, :user_name, :email, :userid, :blogpost)
  end

end
