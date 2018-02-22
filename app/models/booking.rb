class Booking < ApplicationRecord
  validates :date, presence: true;
  validates :location, presence:true;
  belongs_to :performance
  belongs_to :customer, class_name: "User", foreign_key: :user_id
end
