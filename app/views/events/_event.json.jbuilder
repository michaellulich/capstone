json.id event.id
json.address event.address
json.name event.name
json.description event.description
json.time event.time
json.artists event.artists.each do |artist|
  json.id artist.id
  json.name artist.name
  json.genre artist.genre
  json.spotifyId nil
  json.spotifyTrackId nil
end

# json.favorited current_user.events.include? event
json.user_event UserEvent.find_by(user_id: current_user.id, event_id: event.id) if current_user

json.favorited (current_user.user_events.map { |user_event| user_event.event_id}.include? event.id) if current_user

# json.user_event_id current_user.user_events.select { |user_event| user_event.event }
