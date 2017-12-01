class Review < ApplicationRecord
  belongs_to :location

  belongs_to :sender, class_name: "Profil", foreign_key: "sender_id"
  belongs_to :recipient, class_name: "Profil", foreign_key: "recipient_id"

  validates_numericality_of :rating, presence: :true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 5, default: 'can\'t be blank'
  validates :description, presence: true


   def self.search(search)
    where("recipient_id LIKE ?", "%#{search}%")
  end
end
