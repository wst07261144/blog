Rails.application.routes.draw do
  resources :users
  resources :categories
  resources :tags
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
