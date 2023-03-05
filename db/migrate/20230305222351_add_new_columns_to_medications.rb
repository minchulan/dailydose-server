class AddNewColumnsToMedications < ActiveRecord::Migration[6.1]
  def change
    add_column :medications, :thc_strength, :integer
    add_column :medications, :cbd_strength, :integer 
    add_column :medications, :feelings, :text
    add_column :medications, :negatives, :text 
    add_column :medications, :helps_with, :text 
    add_column :medications, :details, :text 
    add_column :medications, :aka, :string
  end
end
