Rails.application.routes.draw do
  root "flights#index"
  resources :flights, only: %i[index show]
  resources :bookings, only: %i[new create show]
end
