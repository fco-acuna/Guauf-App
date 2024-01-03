class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :photo

  # Pet Owner
  has_many :dogs  
  has_many :bookings, through: :dogs
  
  # Walker
  has_one :walkers
  has_many :services
  has_many :booking, through: :services

  # Validations
  validates :name, :phone_number, :address, :role, presence: :true

  # Geocoder
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # PG Search
  include PgSearch::Model
  
  pg_search_scope :global_search,
  against: [ :name, :description, :address ],
  associated_against: {
    categories: [ :name]
  },
  using: {
    tsearch: { prefix: true }
  }
end
