class Cone < ApplicationRecord
  belongs_to :user
  belongs_to :bookings

  validates :condition, presence: true
  validates :type, presence: true
  validates :quantity, presence: true
  validates :location, presence: true
end
