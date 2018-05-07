class CreateWidgets < ActiveRecord::Migration[5.2]
  def change
    create_table :widgets do |t|
      t.string :name
      t.money :price, default: 0
      t.integer :quantity
      t.text :description

      t.timestamps
    end
  end
end
