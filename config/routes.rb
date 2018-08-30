Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # events routes
  get "/events/" => "events#index"
  post "/events/" => "events#create"
  get "/events/:id" => "events#show"
  patch "/events/:id" => "events#update"
  delete "/events/:id" => "events#destroy"

  # artist_events routes
  get "/artist_events/" => "artist_events#index"
  # patch "/events/:id/" => "artist_events#update"
  get "/artist_events/:id" => "artist_events#show"
  post "/artist_events/" => "artist_events#create" 
  delete "/artist_events/:id" => "artist_events#destroy"

  # users routes
  post "/users" => "users#create"
  get "/users/:id" => "users#show"
  get "/usersprofile/" => "users#profile"

  #sessions routes
  post "/sessions" => "sessions#create"
  post "/artist_sessions" => "sessions#artist_session_create"
  get "/sessions/:id" => "sessions#show"

  #artist routes
  post "/artists" => "artists#create"
  get "/artists/:id" => "artists#show"

  #user_events routes
  get "/user_events" => "user_events#index"
  get "user_events/:id" => "user_events#show"
  post "user_events" => "user_events#create"
  delete "user_events/:id" =>
   "user_events#destroy"

  #user_artist routes
  post "/user_artists" => "user_artists#create"

  #SPOTIFY
  get "/spotify_authorize" => "spotify#authorize"
  get "/spotify/callback/" => "spotify#callback"
end
