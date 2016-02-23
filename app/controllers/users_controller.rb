class UsersController < ApplicationController

  def index
    # overwrite the default render of '/users/index' and render
    # 'ParentComponent' with a property of users
    # render component: 'ParentComponent', props: { users: User.all }
    # render component: 'UserTweet', props: { users: User.all }
    # render component: 'SearchBar'
    render component: 'SplashPage'
  end

  def new
    render component: 'NewUser'
    @user = User.new
  end

  def create
    render component: 'NewUser', props: { view: hidden }
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to rides_path, notice: "Welcome to Pick Me Up, #{@user.first_name}! Buckle up, and let's go!"
    else
      render :new
    end
  end

  protected

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :password, :password_confirmation)
  end

end
