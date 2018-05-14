class AddTotalChargeColumnToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :total_charge, :decimal
  end
end
