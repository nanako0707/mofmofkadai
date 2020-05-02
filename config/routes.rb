Rails.application.routes.draw do
  resources :properties
  resources :nearest_stations, only: [:new, :edit, :index, :show]
end
