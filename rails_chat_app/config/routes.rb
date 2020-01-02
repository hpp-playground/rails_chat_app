Rails.application.routes.draw do
  devise_for :users

  root 'threads#index'

  resources :threads, only: %i[show]
end
