class Performance < ApplicationRecord
  belongs_to :artist, class_name: "User", foreign_key: :user_id
  has_many :bookings
  validates :description, presence: true
  validates :price, presence: true, numericality: { only_integer: true, greater_than: 0 }
end
