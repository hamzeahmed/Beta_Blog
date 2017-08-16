class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the BetaBlog #{@user.user_name}"
      redirect_to pages_path
    else
      render 'new'
    end
  end
  
  private 
  def user_params
    params.require(:user).permit(:user_name ,  :email , :password)
  end
end