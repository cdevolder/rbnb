class Recruteur < ApplicationRecord
  belongs_to :profil

  validates :description, presence: true
  mount_uploader :photo, PhotoUploader
end
