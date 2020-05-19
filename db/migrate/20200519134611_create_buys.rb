class CreateBuys < ActiveRecord::Migration[6.0]
  def change
    create_table :buys do |t|
      t.integer :Product_id
      t.integer :User_id

      t.timestamps
    end
  end
end
