class CreateMedications < ActiveRecord::Migration[6.1]
  def change
    create_table :medications do |t|
      t.string :medication_name
      t.string :image_url 
      t.float :price 
      t.string :prescription_required 
    end 
  end
end
