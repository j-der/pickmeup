class RidesController < ApplicationController

	def index
		# if params[:userDestination].present?
		# 	@rides = Ride.near(params[:userDestination], 10, :order => :distance)
		# else
			@rides = Ride.all
		# end
		render json: @rides
	end

	def new
		@ride = Ride.new
	end

	def create
		@ride = Ride.new(ride_params)
		if @ride.save!
			render json: @ride
    	puts "new ride saved"
		else
			puts "something's wrong"
		end
	end

	def show
		@ride = Ride.find(params[:id])
		render json: @ride
	end

	protected

	def ride_params
		params.require(:ride).permit(:origin, :destination, :title, :available_seats)
	end

end
