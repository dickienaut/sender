Rails.application.routes.draw do
  resources :climbers, only: [:index, :new, :show, :create]
  resources :climbs, only: [:index, :new, :show, :create]
  resources :ticks, only: [:new, :create]
end
