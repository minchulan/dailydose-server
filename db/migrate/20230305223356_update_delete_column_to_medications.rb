class UpdateDeleteColumnToMedications < ActiveRecord::Migration[6.1]
  def change
    remove_column :medications, :form
    remove_column :medications, :prescription_required
  end
end
