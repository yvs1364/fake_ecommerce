class AddProductIdToBuys < ActiveRecord::Migration[6.0]
  def change
    add_column :buys, :product_id, :bigint
  end
end
