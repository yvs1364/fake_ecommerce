class AddQuantityToBuy < ActiveRecord::Migration[6.0]
  def change
    add_column :buys, :quantity, :integer
  end
end
