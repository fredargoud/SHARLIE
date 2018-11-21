class RemoveReferenceToUser < ActiveRecord::Migration[5.2]
  def change
    remove_reference(:users, :booking, index: true, foreign_key: true)
  end
end
