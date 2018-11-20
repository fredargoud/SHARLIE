class AddStatusToSpaces < ActiveRecord::Migration[5.2]
  def change
    add_column :spaces, :available, :boolean, default: true
  end
end
