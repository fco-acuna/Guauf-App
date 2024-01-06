class Walker < ApplicationRecord

  # Asociaciones
  belongs_to :user

  # Validaciones
  validates :date_of_birth, presence: true
end
