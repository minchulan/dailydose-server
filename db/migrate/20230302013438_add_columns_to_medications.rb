class AddColumnsToMedications < ActiveRecord::Migration[6.1]
  def change
    add_column :medications, :dose, :float
    add_column :medications, :form, :string 
    add_column :medications, :quantity, :integer
  end
end
