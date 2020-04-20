Rails.application.routes.draw do
  resources :shotts

  devise_for :users, controllers: { registrations: 'registrations'}
  
  root 'shotts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
