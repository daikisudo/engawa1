class AddCategoryToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :category, :string
  end
end
