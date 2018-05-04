class AddImgPathToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :img_path, :string
  end
end
