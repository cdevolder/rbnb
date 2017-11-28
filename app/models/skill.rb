class Skill < ApplicationRecord
  belongs_to :developpeur
  belongs_to :language

  validates :level, presence: true
end
