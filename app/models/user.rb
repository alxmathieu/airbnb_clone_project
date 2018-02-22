class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :username, presence: true, uniqueness: true
  has_many :performances
  has_many :bookings
  has_many :photos
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  include PgSearch
  pg_search_scope :search_username_performances,
    against: [ :username, :bio, :location],
    associated_against: {
      performances: [ :description, :price ]
    },
    using: {
      tsearch: { prefix: true }
    }
end
