Rails.application.routes.draw do
  
  root to: 'site#index'

  get '/contact', to: 'site#contact'
  get '/about', to: 'site#about'

  devise_for :users

  get '/messages', to: 'messages#index'
  get '/messages/new', to: 'messages#new'
  get '/messages/:id', to: 'messages#show'
  post '/messages', to: 'messages#create'
  
  get '/planets', to: 'planets#index'
  get '/planets/show', to: 'planets#show'

end
