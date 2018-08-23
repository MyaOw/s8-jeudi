Rails.application.routes.draw do
  root 'email#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :email
  get '/email/:id', to: 'email#show'
  get '/title/:id', to: 'email#title'
end
