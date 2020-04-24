Rails.application.routes.draw do

resources :shotts do 
  	resources :comments 
  	member do 
  		put 'like', to: "shotts#like"
  		put 'unlike', to: "shotts#unlike"
  	end
  end
 
  devise_for :users, controllers: { registrations: 'registrations' }
  root 'shotts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/users/:id', to: 'users#show'
  resources :users, only: %i[show edit]

    get 'entitys/show'
end
