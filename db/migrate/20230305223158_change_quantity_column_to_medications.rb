class ChangeQuantityColumnToMedications < ActiveRecord::Migration[6.1]
  def change
    change_column :medications, :quantity, :string 
  end
end
