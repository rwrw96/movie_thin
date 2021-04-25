Rails.application.routes.draw do
  get 'favorites/create'
  get 'favorites/destroy'
  devise_for :user
  resources :review
  resources :movies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
