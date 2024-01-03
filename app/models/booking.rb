class Booking < ApplicationRecord
  # Asociaciones
  belongs_to :dog
  belongs_to :service

  # Validaciones
  validates :time, :price, :date, presence: true
end
