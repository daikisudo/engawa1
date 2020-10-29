class AddIllustratorIdToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :illustrator_id, :integer
  end
end
