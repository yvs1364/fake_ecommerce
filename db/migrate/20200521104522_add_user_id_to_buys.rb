class AddUserIdToBuys < ActiveRecord::Migration[6.0]
  def change
    add_column :buys, :user_id, :bigint
  end
end
