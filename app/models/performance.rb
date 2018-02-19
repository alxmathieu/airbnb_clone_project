class Performance < ApplicationRecord
  belongs_to :user
  validates :description, presence: true
  validates :price, presence: true, numericality: { only_integer: true, greater_than: 0 }
end
