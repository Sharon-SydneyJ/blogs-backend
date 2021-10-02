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

  # PUT /users/:id
    def update
    user = User.find_by(id: params[:id])
    user.update(user_params)
    render json: user
  end
  
   # DELETE /users/:id
   def destroy
    user = User.find_by(id: params[:id])
    user.destroy
    head :no_content
  end

  private


  def user_params
    params.permit(:first_name, :last_name, :user_name, :email, :userid, :blogpost)
  end

end
