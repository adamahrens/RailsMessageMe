Rails.application.routes.draw do
  devise_for :users
  resources :chatrooms

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'signup', to: 'devise/registrations#new'
  end

  root to: 'chatrooms#index'
end
