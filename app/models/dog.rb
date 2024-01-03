class Dog < ApplicationRecord

  # Asociaciones
  belongs_to :user
  has_one_attached :photo
  has_many :bookings
  has_many :services, through: :bookings

  # Validaciones
  validates :name, :age, :breed, :size, :vaccines_allergies, presence: :true
end
