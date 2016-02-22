class RidesController < ApplicationController

	skip_before_filter :verify_authenticity_token, :only => :create

	def index
		render component: 'PostRideForm', props: { ride: Ride.new }
	end

	def new
		render component: 'PostRideForm'
		@ride = Ride.new
	end

	def create
		render component: 'PostRideForm'
		@ride = Ride.new(ride_params)

		if @ride.save
			render component: 'UserTweet', props: { users: User.all }
		else
			render :new
		end
	end

	protected

	def ride_params
		params.require(:ride).permit(:title, :details, :origin_latitude, :origin_longitutde, :destination_latitude, :destination_longitutde, :seats)
	end

end