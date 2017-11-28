class Developpeur < ApplicationRecord

  belongs_to :profil

  validates :description, presence: true
  validates :available, inclusion: { in: ["available", "unavailable"], allow_nil: false }
  validates :photo, presence: true
end
