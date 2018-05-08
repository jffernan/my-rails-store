class AddColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :address, :text
    add_column :users, :telephone, :string
    add_column :users, :payment, :integer
  end
end
