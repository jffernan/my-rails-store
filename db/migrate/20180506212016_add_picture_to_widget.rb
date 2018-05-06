class AddPictureToWidget < ActiveRecord::Migration[5.2]
  def change
    add_column :widgets, :picture, :string
  end
end
