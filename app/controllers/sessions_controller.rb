class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      render json: @user
      console.log("logged in")
    else

    end
  end

  def destroy
    session[:user_id] = nil
  end

  protected

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
