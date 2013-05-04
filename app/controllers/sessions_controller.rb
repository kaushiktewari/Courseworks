class SessionsController < ApplicationController
  skip_before_filter :require_user, :only => [:new, :create]

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user
      session[:user_id] = ser.id
      redirect_to courses_path
    else
      render "new"
    end  
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end