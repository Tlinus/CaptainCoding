Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'arena#index', as: 'home'
  get 'Arena' => 'arena#new'
  post 'Arena/' => 'arena#fight'


  resources :stuffs
  resources :persos

  resources :armes
  resources :armures
  resources :forges
  resources :equipements
end
