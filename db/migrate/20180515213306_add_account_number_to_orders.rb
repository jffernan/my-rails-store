class AddAccountNumberToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :account_number, :integer, limit: 8
  end
end
