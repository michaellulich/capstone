json.array! @artist_events.each do |artist_event|
  json.id artist_event.id
  json.artist_id artist_event.artist_id
  json.event_id artist_event.event_id
end