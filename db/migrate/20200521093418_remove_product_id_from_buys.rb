class RemoveProductIdFromBuys < ActiveRecord::Migration[6.0]
  def change
    remove_column :buys, :Product_id, :integer
  end
end
