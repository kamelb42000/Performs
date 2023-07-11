Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :sports do
    resources :numbers
    resources :trainings
    resources :players do
      resources :numbers
    end
  end

  resources :sports, only: [:destroy]
  resources :numbers
  resources :players, only: [:index, :new, :create]
end
