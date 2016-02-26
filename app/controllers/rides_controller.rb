class RidesController < ApplicationController

	def index
		render component: 'PostRideForm', props: { ride: Ride.new }
	end

	def new
		@ride = Ride.new
	end

	def create
		@ride = Ride.new(ride_params)
		binding.pry
		if @ride.save!
    	render json: @ride
		else
			puts "shit be broken."
		end
	end

	protected

	def ride_params
		params.require(:ride).permit(:origin, :destination, :title, :available_seats)
	end

end
