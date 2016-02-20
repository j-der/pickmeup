class UsersController < ApplicationController

  def index
    render component: 'ParentComponent', props: { users: User.all }
  end

end
