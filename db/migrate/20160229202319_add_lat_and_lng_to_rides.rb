class AddLatAndLngToRides < ActiveRecord::Migration
  def change
    add_column :rides, :destination_lat, :float
    add_column :rides, :destination_lng, :float
  end
end
