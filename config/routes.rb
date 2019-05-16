Rails.application.routes.draw do
  resources :bookings
  resources :amenities
  resources :locations
  resources :users

  get '/search' => 'search#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
