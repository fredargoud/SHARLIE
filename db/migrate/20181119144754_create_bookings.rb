class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :space, foreign_key: true
      t.integer :mate_id

      t.timestamps
    end
    add_foreign_key :bookings, :users, column: :mate_id
    add_index :bookings, :mate_id
  end
end
