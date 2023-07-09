Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :sports do
    resources :numbers  # Utilisation du pluriel pour la ressource
    resources :trainings
    resources :players
  end
  resources :sports, only: [:destroy]

  # Ajouter la route pour l'action index de NumbersController
  resources :numbers, only: [:index]
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
