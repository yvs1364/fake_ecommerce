class RemoveUserIdFromBuys < ActiveRecord::Migration[6.0]
  def change
    remove_column :buys, :User_id, :integer
  end
end
