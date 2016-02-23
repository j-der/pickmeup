class AddTokenToRides < ActiveRecord::Migration
  def change
    add_column :rides, :authenticity_token, :string
  end
end
