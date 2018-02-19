class Booking < ApplicationRecord
  belongs_to :performance
  belongs_to :customer, class_name: "User", foreign_key: :user_id
end
