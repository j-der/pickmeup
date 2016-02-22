class RidesController < ApplicationController

	def index
		render component: 'PostRideForm', props: { ride: Ride.new }
	end

	def create
		@ride = Ride.new(ride_params)

		if @ride.save
			render component: 'UserTweet', props: { users: User.all }
		else
			puts "error!"
		end
	end

	private

	def ride_params
		params.require(:ride).permit(:title, :details, :seats)
	end

end