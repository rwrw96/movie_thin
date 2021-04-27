Rails.application.routes.draw do
  
  root 'movies#index'
  devise_for :user
  resources :review
  resources :movies
  resources :users
  
  get 'favorites/create'
  get 'favorites/destroy'
  post 'like/:id' => 'likes#create', as: 'create_like'
  delete 'like/:id' => 'likes#destroy', as: 'destroy_like'
  post 'movies/:id' => "movies#show",as: "detail"
  get 'movies/:id' => "movies#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
