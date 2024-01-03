class Walker < ApplicationRecord

  # Asociaciones
  belongs_to :user
  has_one_attached :photo

  # Validaciones
  validates :age, :photo, presence: :true
end
