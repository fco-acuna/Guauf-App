class Dog < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :bookings
  has_many :services, through: :bookings
end
