class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def authenticate
  redirect_to new_user_path unless session[:current_user_id]
  end

 # get the current_user id in the seesion if session[:current_user_id] exists i.e to check if someone is currently logged in
  def current_user
  User.find(session[:current_user_id]) if session[:current_user_id]
  end


end
