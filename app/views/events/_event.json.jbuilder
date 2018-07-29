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
json.users event.users.each do |user|
  json.id user.id
  json.name user.name
end
