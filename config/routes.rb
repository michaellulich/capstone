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
end
