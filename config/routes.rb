Rails.application.routes.draw do
  root 'tapes#index'
  resources :tapes, :songs
end
