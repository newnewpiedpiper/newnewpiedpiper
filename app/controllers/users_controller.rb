class UsersController < ApplicationController
  
   before_action :logged_in_user, only: [:index, :edit, :update]
  
  
  def index
    @users = User.all
  end
  
  
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
  
  def edit
    @user = User.find_by_username(params[:username])
  end
  
  
  def update
  @user = User.find_by_username(params[:username])
     if @user.update_attributes(user_params)
      # Handle a successful update.
       flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
     end
  end
  

  
    private

    def user_params
      params.require(:user).permit(:name, :username, :email, :password,
                                   :password_confirmation)
    end 
    
     # Confirms a logged-in user.
    def logged_in_user
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end


    
 
end
