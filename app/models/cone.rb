class Cone < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :condition, :quantity, :location, :name, :description, presence: true
end
