class AddPriceToWidget < ActiveRecord::Migration[5.2]
  def change
    add_column :widgets, :price, :money, default: 0
  end
end
