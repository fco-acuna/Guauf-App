class Booking < ApplicationRecord
  belongs_to :dog
  belongs_to :service

  validates :time, :price, :date, presence: true
end
