Rails.application.routes.draw do
  resources :properties do
    resources :nearest_stations
  end
end
