class Booking < ApplicationRecord
  belongs_to :dog
  belongs_to :service
end
