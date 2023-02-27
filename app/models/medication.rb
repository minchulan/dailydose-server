class Medication < ActiveRecord::Base 
    belongs_to :patient 
    validates :medication_name, presence: true 
end 