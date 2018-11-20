class AddColumnToSpaces < ActiveRecord::Migration[5.2]
  def change
    add_column :spaces, :description, :string
    add_column :spaces, :price, :integer
    add_column :spaces, :number_of_seats, :integer
  end
end
