class Patient < ActiveRecord::Base 
    has_many :medications, dependent: :destroy
    validates :first_name, presence: true
    validates :last_name, presence: true 
end 