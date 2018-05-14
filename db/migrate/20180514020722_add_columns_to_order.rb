class AddColumnsToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :name, :string
    add_column :orders, :shipping_address, :text
    add_column :orders, :user_email, :string
    add_column :orders, :phone, :string
    add_column :orders, :pay_type, :integer
  end
end
