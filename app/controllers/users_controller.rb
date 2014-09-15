class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    
    if @user.save
      flash[:notice] = "User successfully created, please log in."
      redirect_to articles_path
    else
      flash[:alert] = "Something went wrong!"
      raise "User could not be saved."
    end
    
  end
end

