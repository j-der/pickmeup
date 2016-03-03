class SessionsController < ApplicationController

  def login
    if params[:user].present?
      render json:

  end

  def create

  end

  def destroy
    session[:user_id] = nil
  end

  protected

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
