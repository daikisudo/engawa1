class AddIsValidToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :is_valid, :boolean, default: true, null: false
  end
end
