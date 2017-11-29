class Profil < ApplicationRecord
  has_many :reviews, class_name: "Review", foreign_key: "recipient_id"
  has_many :sent_reviews, class_name: "Review", foreign_key: "sender_id"

  has_many :messages, class_name: "Message", foreign_key: "recipient_id"
  has_many :sent_messages, class_name: "Message", foreign_key: "sender_id"

  belongs_to :user


  validates :name, presence: true
  validates :address, presence: true
  validates :city, presence: true

  has_one :developpeur
  has_one :recruteur

  mount_uploader :photo, PhotoUploader




end
