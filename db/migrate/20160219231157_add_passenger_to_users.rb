class AddPassengerToUsers < ActiveRecord::Migration
  def change
    add_column :users, :passenger, :boolean
  end
end
