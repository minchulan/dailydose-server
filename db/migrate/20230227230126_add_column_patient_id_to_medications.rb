class AddColumnPatientIdToMedications < ActiveRecord::Migration[6.1]
  def change
    add_column :medications, :patient_id, :integer 
  end
end
