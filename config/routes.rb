Rails.application.routes.draw do
  root to: 'articles#index'

  resources :users
  resources :categories
  resources :tags
  resources :articles
  resources :session, only: [:new, :create] do
    collection do
      patch '/' => 'session#create'
      get '/calculate' => 'session#calculate'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
