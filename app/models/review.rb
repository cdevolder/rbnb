class Review < ApplicationRecord
  belongs_to :location
  belongs_to :developpeur
  belongs_to :recruteur
end
