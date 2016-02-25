class UsersController < ApplicationController

  def index
    @users = User.all
    # overwrite the default render of '/users/index' and render
    # 'ParentComponent' with a property of users
    # render component: 'ParentComponent', props: { users: User.all }
    # render component: 'UserTweet', props: { users: User.all }
    # render component: 'SearchBar'
    render component: 'SplashPage'
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save!
      session[:user_id] = @user.id
      render json: @user
      puts "sign up successful"
    else
      redirect_to rides_path
      puts "sign up failed"
    end
  end

  protected

  def user_params

    params.require(:user).permit(:email, :first_name, :last_name, :password, :password_confirmation, :avatar, :authenticity_token)
  end

end
