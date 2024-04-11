Rails.application.routes.draw do
  get 'channels/index'
  get 'channels/show'
  get 'channels/new'
  get 'channels/create'
  get 'channels/index'
  get 'channels/show'
  get 'channels/create'
  get 'channels/index'
  get 'channels/show'
  get 'channels/create'
  devise_for :users

  resources :channels, only: [:index, :show, :new, :create]
  root 'channels#index'

end
