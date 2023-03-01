class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthday 
      t.string :gender 
      t.string :email 
      t.string :phone_number 
      t.text :address 
      t.string :allergies 
    end 
  end
end
