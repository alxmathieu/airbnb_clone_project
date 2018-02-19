class Booking < ApplicationRecord
  belongs_to :performance
  belongs_to :user
end
