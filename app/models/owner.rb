class Owner < ApplicationRecord
    has_many :dogs
    has_many :reservations, through: :dogs 
    
    validates :name, presence: true
    validates :city, presence: true
    validates :address, presence: true
end
