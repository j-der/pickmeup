class AddOriginDestinationToRides < ActiveRecord::Migration
  def change
    add_column :rides, :origin, :string
    add_column :rides, :destination, :string
  end
end
