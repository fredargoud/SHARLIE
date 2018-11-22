class AddRankingToSpaces < ActiveRecord::Migration[5.2]
  def change
    add_column :spaces, :ranking, :integer
  end
end
