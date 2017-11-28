class Developpeur < ApplicationRecord

  belongs_to :profil

  validates :description, presence: true
  validates :price, presence: true
  validates :available, inclusion: { in: ["available", "unavailable"], allow_nil: false }
  mount_uploader :photo, PhotoUploader
end
