class Cone < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :condition, presence: true
  validates :type, presence: true
  validates :quantity, presence: true
  validates :location, presence: true
end
