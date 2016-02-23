class SeatsController < ApplicationController

  def index
    render component: 'GoogleMap'
  end

end
