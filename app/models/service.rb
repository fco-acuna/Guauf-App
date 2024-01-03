class Service < ApplicationRecord
  # Asociaciones
  belongs_to :user
  has_many :bookings

  # Validaciones
  validates :walking_time, :price, :distance, presence: :true

end
