Rails.application.routes.draw do
  get 'movies' => 'movies#index'
  get 'movies/:title' => 'movies#show'
end
