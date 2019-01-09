class UsersController < ApplicationController
  def name
  end

  def email
  end
  
  def show
    @user = User.find_by_username(params[:username])
  end
  
  def new
    @user = User.new
  end
  
  def username 
  end 
  def create
    @user = User.new(user_params)
    if @user.save
         log_in @user
      flash[:success] = "Welcome to Sling!"
      redirect_to @user
    else
      render 'new'
    end
  end
    private

    def user_params
      params.require(:user).permit(:name, :username, :email, :password,
                                   :password_confirmation)
    end 

                          
end
