class AddDeletedAtColumnToIllustrators < ActiveRecord::Migration[5.2]
  def change
    add_column :illustrators, :deleted_at, :datetime
  end
end
