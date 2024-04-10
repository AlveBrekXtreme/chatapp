Rails.application.routes.draw do
  get 'login/new'
  get 'login/show'

  root 'login#show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
