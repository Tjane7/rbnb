class Cone < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  # validates :condition, :quantity, :name, :description, :price, presence: true
end
