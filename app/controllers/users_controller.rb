class UsersController < ApplicationController

  #searches for /views/users/index.html.erb
  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])

    if @user.save
      "Yaaaay!"
    else
      "ERRRRORRRR"
    end
  end
  
  def create
    @user = User.new(params[:user])

    if @user.save
      redirect_to users_path #the "index" action, aliased in our routes folder as "users"
    else
      #1. Display the form
      #2. Show all relevant errors
      render "new" #refers to app/views/users/new
    end
  end
  
  def show
      @user = User.find(params[:id])
    end
  
end

# def index
#     @users = User.all
#
#     # render "index" ... Don't need, because it's the default.
#   end
#
#   # (Remember, in Sinatra, our path looked like "users/show/:id".)
#   def show
#     @user = User.find(params[:id])
#   end
#
#   def new
#     @new_recruit = User.new
#
#     # render "new" ... Don't need, because it's the default.
#   end
#
#   def create
#     # Uncomment this to see what lives in params[:user].
#     # raise "#{params[:user]}"
#     # (Or just do binding.pry - as always.)
#
#     @new_recruit = User.new(params[:user])
#
#     if @new_recruit.save
#       redirect_to users_path # The "index" action.
#
#       # "Redirecting" means a **new request** is created. It is creating
#       # a new request to the users_path.
#     else
#       # 1. Re-show the form.
#       # 2. Display relevant errors.
#
#       # Override the default view that would be loaded:
#       render "new" # Refers to /app/views/users/new
#     end
#   end
#
#   def edit
#     @existing_recruit = User.find(params[:id])
#   end
#
#   def update
#     @existing_recruit = User.find(params[:id])
#
#     if @existing_recruit.update_attributes(params[:user])
#       redirect_to user_path(@existing_recruit.id)
#     else
#       render "edit"
#     end
#   end
#
#   def make_admin
#     @existing_recruit = User.find(params[:id])
#
#     @existing_recruit.convert_to_admin
#
#     redirect_to user_path(@existing_recruit.id)
#   end
#
# end