class Event < ApplicationRecord
  has_many :artist_events
  has_many :artists, through: :artist_events
  has_many :user_events
  has_many :users, through: :user_events
  
  # def primary_img
  #   artists.select{|artist| artist.images.src}
  # end

end
