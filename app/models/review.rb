class Review < ApplicationRecord
  belongs_to :location

  belongs_to :sender, class_name: "Profil", foreign_key: "sender_id"
  belongs_to :recipient, class_name: "Profil", foreign_key: "recipient_id"

  validates :rating, numericality: { only_integer: true }, inclusion: { in: ["0", 1, 2, 3, 4, 5], allow_nil: false }
  validates :description, presence: true


   def self.search(search)
    where("recipient_id LIKE ?", "%#{search}%")
  end
end
