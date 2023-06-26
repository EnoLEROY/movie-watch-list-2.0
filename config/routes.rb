Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "playlists#index"

  resources :playlists, only: %i[index show new create edit updaate destroy]

end
