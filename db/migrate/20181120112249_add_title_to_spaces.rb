class AddTitleToSpaces < ActiveRecord::Migration[5.2]
  def change
    add_column :spaces, :title, :string
  end
end
