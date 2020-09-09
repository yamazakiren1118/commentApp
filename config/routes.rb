Rails.application.routes.draw do
  root 'tweets#index'
  get 'tweets/new'
  post '/tweets',to: 'tweets#create'

  get 'comments/new'
  post '/comments',to: 'comments#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
