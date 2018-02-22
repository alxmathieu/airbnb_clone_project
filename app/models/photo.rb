class Photo < ApplicationRecord
  belongs_to :user

  mount_uploader :artist_photo, PhotoUploader
end
