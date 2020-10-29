class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :price
      t.text :caption
      t.string :image_id
      t.references :illustrator, foreign_key: true

      t.timestamps
    end
  end
