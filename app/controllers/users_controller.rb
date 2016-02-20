class UsersController < ApplicationController

  def index
    # overwrite the default render of '/users/index' and render
    # 'ParentComponent' with a property of users
    render component: 'ParentComponent', props: { users: User.all }
  end

end
