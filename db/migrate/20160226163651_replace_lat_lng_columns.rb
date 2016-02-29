class ReplaceLatLngColumns < ActiveRecord::Migration
  def change
    remove_column :rides, :origin_latitude, :string
    remove_column :rides, :origin_longitude, :string
    remove_column :rides, :destination_latitude, :string
    remove_column :rides, :destination_longitude, :string
  end
end
