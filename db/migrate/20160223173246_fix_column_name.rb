class FixColumnName < ActiveRecord::Migration
  def change
  	change_table :rides do |r|
  		r.rename :seats, :available_seats
  		r.rename :users_id, :user_id
  	end
  	
  	change_table :seats do |s|
  		s.rename :users_id, :user_id
  		s.rename :rides_id, :ride_id
  	end
  	
  end
end