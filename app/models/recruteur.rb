class Recruteur < ApplicationRecord
  belongs_to :profil

  validates :description, presence: true
  validates :photo, presence: true
end
