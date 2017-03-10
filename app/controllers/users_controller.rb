class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    #debugger
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)   #Not the final Implementation!
    if @user.save
      flash[ :success] = "Welcome to the Firecaller App!"
      redirect_to @user
    else
      render 'new'
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :password, 
                                      :password_confirmation)
                                      
  end 
end
