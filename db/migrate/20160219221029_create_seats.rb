class CreateSeats < ActiveRecord::Migration
  def change
    create_table :seats do |t|
      t.references :users, index: true
      t.references :rides, index: true

      t.timestamps null: false
    end
  end
end
