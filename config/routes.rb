Rails.application.routes.draw do
  
  root to: 'site#index'

  get '/contact', to: 'site#contact'
  get '/about', to: 'site#about'

  devise_for :users

  get '/messages', to: 'messages#index'
  get '/messages/new', 'messages#new'
  
end
