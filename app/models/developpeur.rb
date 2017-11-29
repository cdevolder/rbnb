class Developpeur < ApplicationRecord
  belongs_to :profil

  validates :description, presence: true
  validates :price, presence: true
  validates :available, inclusion: { in: ["Yes", "No"], allow_nil: false }
  validates :address, presence: true
  validates :city, presence: true

  mount_uploader :photo, PhotoUploader

  geocoded_by :full_address
  after_validation :geocode, if: :full_address_changed?

  def full_address
    "#{address}, #{city}"
  end

  def full_address_changed?
    address_changed? || city_changed?
  end

  def self.search(search)
    where("city LIKE ?", "%#{search}%")
  end
end
