class Review < ApplicationRecord
  belongs_to :location

  belongs_to :sender, class_name: "Profil", foreign_key: "sender_id"
  belongs_to :recipient, class_name: "Profil", foreign_key: "recipient_id"
end
