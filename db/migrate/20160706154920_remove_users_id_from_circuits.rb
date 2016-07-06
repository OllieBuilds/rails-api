class RemoveUsersIdFromCircuits < ActiveRecord::Migration
  def change
    remove_column :circuits, :users_id, :integer
  end
end
