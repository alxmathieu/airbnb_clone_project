class Booking < ApplicationRecord
  belongs_to :performance
  belongs_to :customer, class_name: "User", foreign_key: :user_id
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
