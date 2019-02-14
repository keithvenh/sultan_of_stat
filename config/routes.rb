Rails.application.routes.draw do
  root 'static#home'

  resources :franchises
  resources :teams
  resources :players
end
