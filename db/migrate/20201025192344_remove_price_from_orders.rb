class RemovePriceFromOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :price, :string
  end
end
