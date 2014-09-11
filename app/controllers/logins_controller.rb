class LoginsController < ApplicationController
end

def create
    user = User.find_by_email(params[:email])
    
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to articles_path
    else
      raise "Invalid login."
    end
  end
  
end