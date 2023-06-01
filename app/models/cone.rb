class Cone < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  # validates :condition, :quantity, :name, :description, :price, presence: true
end
