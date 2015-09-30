#require 'sidekiq/web'

Cybernetic::Application.routes.draw do
  
  root 'snippets#index'
  
  devise_for :users
  
  resources :snippets

  resources :recipes
#
#  mount Sidekiq::Web, at: '/sidekiq'

   
end
