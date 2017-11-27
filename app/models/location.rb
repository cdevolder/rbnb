class Location < ApplicationRecord
  belongs_to :developpeur
  belongs_to :recruteur
end
