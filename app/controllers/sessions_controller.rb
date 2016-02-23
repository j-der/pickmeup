class SessionsController < ApplicationController

  def index

  end

  def new

  end

  def create
    user = User.find_by(email: params[:user][:email])

    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      puts "log in and authentication success!"
      redirect_to users_path
    else
      puts "log in failed"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to rides_path
  end


end
