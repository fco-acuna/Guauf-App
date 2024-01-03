class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Pet Owner
  has_many :dogs  
  has_many :bookings, through: :dogs
  # Walker
  has_one :walkers
  has_many :services
  has_many :booking, through: :services
end
