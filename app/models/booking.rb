class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :cone

  validates_associated :user, :cone
  validates :start_date, :end_date, presence: true
end
