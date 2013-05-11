class SessionsController < ApplicationController

def new
end

def create
  user = User.from_omniauth(env["omniauth.auth"])
  session[:user_id] = user.id
  redirect_to root_path, :notice => "You have been successfully logged in, #{user.first_name}"
end

def destroy
  @user_first_name = User.find(:user_id).first_name
  session[:user_id] = nil
  redirect_to root_path, :notice => "You have been successfully logged out, #{@user_first_name}."
end

end
