Rails.application.routes.draw do
  devise_for :users
  get 'user/new'

  resource :user, only: [:new, :create, :show]
  root 'user#show'

end
