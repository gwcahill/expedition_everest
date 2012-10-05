ExpeditionEverest::Application.routes.draw do
  get "attractions/new"
  get "attractions/show"

  get "themeparks/new"
  get "themeparks/show"

  get "themepark/new"

  get "expedition_everest_tweets/everesttweets"

  resources :users
  resources :sessions,   only: [:new, :create, :destroy]
  resources :microposts, only: [:create, :destroy]
  resources :themeparks
  resources :attractions

  match '/compare', to: 'attractions#index'
  match '/compare/new', to: 'attractions#new'
  match '/compare/delete', to: 'attractions#destroy', via: :delete

  match '/signup',  to: 'users#new'
  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete

  root to: 'static_pages#home'
  match '/help',    to: 'static_pages#help'
  match '/about',   to: 'static_pages#about'
  match '/news',    to: 'static_pages#news'
  match '/imagineering', to: 'static_pages#imagineering'
  match '/joinnow', to: 'users#new'

  match '/everesttweets', to: 'ExpeditionEverestTweets#everesttweets'
end
