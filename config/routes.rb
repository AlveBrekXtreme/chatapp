Rails.application.routes.draw do
  get 'messages/new'
  get 'messages/create'
  get 'channels/index'
  get 'channels/show'
  get 'channels/new'
  get 'channels/create'
  devise_for :users

  resources :channels, only: [:index, :new, :create, :show]
  root 'channels#index'

end
