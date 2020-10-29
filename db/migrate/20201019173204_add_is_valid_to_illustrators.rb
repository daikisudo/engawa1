class AddIsValidToIllustrators < ActiveRecord::Migration[5.2]
  def change
    add_column :illustrators, :is_valid, :boolean, default: true
  end
end
