class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_login(params[:login])
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      session[:user_role] = Role.find(user.role_id).name
      redirect_to index_url
    else
      redirect_to login_url, alert: "Error"
    end
  end

  def destroy
    session[:user_id] = nil
    session[:user_role] = nil
    redirect_to login_url, notice: "Logout"
  end

end
