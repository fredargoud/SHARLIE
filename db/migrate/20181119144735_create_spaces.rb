class CreateSpaces < ActiveRecord::Migration[5.2]
  def change
    create_table :spaces do |t|
      t.integer :owner_id
      t.timestamps
    end

    add_foreign_key :spaces, :users, column: :owner_id
    add_index :spaces, :owner_id
  end
end
