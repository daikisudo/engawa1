class AddOrdersIdToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :orders_id, :integer
  end
end
