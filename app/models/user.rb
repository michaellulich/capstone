class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :user_events
  has_many :events, through: :user_events
  has_many :user_artists
  has_many :artists, through: :user_artists
end
