class RidesController < ApplicationController

	def index
		render component: 'PostRideForm', props: { ride: Ride.new }
	end

	def new
		render component: 'PostRideForm'
		@ride = Ride.new
	end

	def create
		@ride = Ride.new(params[:title])

		if @ride.save
    	render component: 'ParentComponent', props: { users: User.all }
    	return
		else
			render :new
		end
	end

	protected

	def ride_params
		params.require(:ride).permit(:title, :details, :seats, :authenticity_token)
	end

end