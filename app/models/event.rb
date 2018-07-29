class Event < ApplicationRecord
  has_many :artist_events
  has_many :artists, through: :artist_events
  has_many :user_events
  has_many :users, through: :user_events

  
end
