ExpeditionEverest::Application.routes.draw do
  get "expedition_everest_tweets/everesttweets"

  resources :users

  root to: 'static_pages#home'
  match '/help',    to: 'static_pages#help'
  match '/about',   to: 'static_pages#about'
  match '/news',    to: 'static_pages#news'
  match '/imagineering', to: 'static_pages#imagineering'
  match '/joinnow', to: 'users#new'
  match '/everesttweets', to: 'ExpeditionEverestTweets#everesttweets'
end
