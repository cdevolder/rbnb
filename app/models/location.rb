class Location < ApplicationRecord
  belongs_to :recruteur
  belongs_to :developpeur

  validates :status, presence: true
  validates :check_in, presence: true
  validates :check_out, presence: true
end
