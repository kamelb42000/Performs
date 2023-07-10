Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :sports do
    resources :numbers
    resources :trainings
    resources :players
  end

  resources :sports, only: [:destroy]
  resources :numbers, only: [:index]
  resources :players, only: [:index, :new, :create]

end

