Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #Actors
  get "actors"=>"actors#index"
  get "/actors/:id" => "actors#show"
  post "actors" => "actors#create"
  patch "actors/:id" => "actors#update"
  delete "actors/:id" => "actors#destroy"

  #Movies
  get "movies"=>"movies#index"
  get "/movies/:id" => "movies#show"
  post "movies" => "movies#create"
  patch "movies/:id" => "movies#update"
  delete "movies/:id" => "movies#destroy"

  #Users
  post "/users" => "users#create"

  #Sessions
  post "/sessions" => "sessions#create"

  #MovieGenres
  post "/movie_genres" => "movie_genres#create"
end
