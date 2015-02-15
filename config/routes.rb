Rails.application.routes.draw do
  
  get 'site/index'

  get 'site/contact'

  get 'site/about'

  devise_for :users
  root to: 'site#index'
  
end
