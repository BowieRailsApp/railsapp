class SessionsController < ApplicationController

  def create
    user = User.find_by(username: params[:username])
    # chef = User.find_by(employee_type: "Chef")
    # server = User.find_by(employee_type: "Server")
    # admin = User.find_by(employee_type: "Admin")

    if user && user.authenticate(params[:password]) && user.employee_type == "Chef"
      session[:current_user_id] = user.id
      redirect_to root_path
    elsif user && user.authenticate(params[:password]) && user.employee_type == "Server"
      session[:current_user_id] = user.id
      redirect_to tables_path
    elsif user && user.authenticate(params[:password]) && user.employee_type == "Admin"
      session[:current_user_id] = user.id
      redirect_to fooditems_path
    end
  end

  def destroy
    session[:current_user_id] = nil
    redirect_to root_path
  end
end
