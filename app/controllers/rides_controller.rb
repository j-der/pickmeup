class RidesController < ApplicationController

	def index
		render component: 'PostRideForm', props: { ride: Ride.new }
	end

	def new
		@ride = Ride.new
	end

	def create
		@ride = Ride.new(ride_params)

		if @ride.save
    	redirect_to users_path, notice: "#{@ride.title} was posted successfully!"
    	return
		else
			render :new
		end
	end

	protected	

	def ride_params
		params.require(:ride).permit(
			:title, :details, :available_seats, :authenticity_token
			)
	end

end