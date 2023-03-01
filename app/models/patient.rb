class Patient < ActiveRecord::Base 
    has_many :medications, dependent: :destroy
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :birthday, presence: true
    validates :email, email: {mode: :strict, require_fqdn: true}
    validates :phone_number, presence: true 
end 