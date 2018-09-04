json.id event.id
json.address event.address
json.name event.name
json.description event.description
# json.time event.time.iso8601
json.time event.time
json.formatted_time event.time.strftime("%b %d, %l %P")
# json.primary_img event.primary_img
json.artists event.artists.each do |artist|
  json.id artist.id
  json.name artist.name
  json.genre artist.genre
  json.spotifyId nil
  json.spotifyTrackId nil
  json.images artist.image_urls
  json.primary_image artist.image_urls[0] ?  artist.image_urls[0] : "https://images-na.ssl-images-amazon.com/images/I/716EFOeWz8L._SL1350_.jpg"
end

# json.favorited current_user.events.include? event
json.user_event UserEvent.find_by(user_id: current_user.id, event_id: event.id) if current_user

json.favorited (current_user.user_events.map { |user_event| user_event.event_id}.include? event.id) if current_user

# json.user_event_id current_user.user_events.select { |user_event| user_event.event }
