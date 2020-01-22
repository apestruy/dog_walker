class Reservation < ApplicationRecord
  belongs_to :dog
  belongs_to :walker
end
