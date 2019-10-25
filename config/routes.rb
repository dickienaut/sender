Rails.application.routes.draw do
  resources :climbers, only: [:index, :new, :show, :create]
  resources :climbs, only: [:index, :new, :show, :create]
  resources :ticks, only: [:new, :create]

  root 'climbs#index'

  # post 'sessions/reset' to: 'sessions#reset'
  # make a post request to sessions/reset to the reset method in the sessions controller


end
