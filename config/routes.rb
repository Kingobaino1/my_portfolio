Rails.application.routes.draw do
  root 'homepages#home'
  get 'home', to: 'homepages#home'
  resources :contacts
  get '/first', to: 'static_pages#first'
  get '/second', to: 'static_pages#second'
  get '/third', to: 'static_pages#third'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
