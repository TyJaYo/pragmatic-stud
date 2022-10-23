Rails.application.routes.draw do
  root 'movies#index'
  get 'movies' => 'movies#index'
  get 'movies/:title' => 'movies#show', as: 'movie'
end
