json.id event.id
json.address event.address
json.name event.name
json.description event.description
json.time event.time
json.artists event.artists.each do |artist|
  json.id artist.id
  json.name artist.name
  json.genre artist.genre
end


json.favorited (current_user.user_events.map { |user_event| user_event.event_id}.include? event.id) if current_user
