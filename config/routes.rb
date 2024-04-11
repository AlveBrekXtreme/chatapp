Rails.application.routes.draw do
  get 'channel/index'
  get 'channel/show'
  get 'channel/new'
  get 'channel/create'
  get 'channel/index'
  get 'channel/show'
  get 'channel/create'
  get 'channels/index'
  get 'channels/show'
  get 'channels/create'
  devise_for :users

  # resource :user, only: [:new, :create, :show]
  resource :channel, only: [:index, :show, :new, :create]
  root 'channel#index'

end
