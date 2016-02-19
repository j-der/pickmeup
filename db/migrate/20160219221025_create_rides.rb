class CreateRides < ActiveRecord::Migration
  def change
    create_table :rides do |t|
      t.string     :title
      t.string     :details
      t.decimal    :origin_latitude
      t.decimal    :origin_longitude
      t.decimal    :destination_latitude
      t.decimal    :destination_longitude
      t.integer    :seats, default: 1
      t.references :users, index: true

      t.timestamps null: false
    end
  end
end
