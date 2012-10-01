ExpeditionEverest::Application.routes.draw do
  resources :users

  root to: 'static_pages#home'
  match '/help',    to: 'static_pages#help'
  match '/about',   to: 'static_pages#about'
  match '/news',    to: 'static_pages#news'
  match '/imagineering', to: 'static_pages#imagineering'
  match '/joinnow', to: 'users#new'
end
