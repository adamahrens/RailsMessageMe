Rails.application.routes.draw do
  resources :chatrooms

  root to: 'chatrooms#index'
end
