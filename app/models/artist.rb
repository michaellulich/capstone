class Artist < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :artist_events
  has_many :events, through: :artist_events
end
