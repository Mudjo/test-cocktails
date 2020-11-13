Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'cocktails', to: 'cocktails#index'
  # get 'cocktails/new', to: 'cocktails#new'
  # get 'cocktails/:id', to: 'cocktails#show', as: :cocktail
  # post 'cocktails', to: 'cocktails#create'
  # get 'cocktails/:id/doses/new', to: 'doses#new', as: :doses_new
  # post 'cocktails/:id/doses', to: 'doses#create', as: :doses

  root to: 'cocktails#index'
  resources :cocktails, only: [:index, :new, :create, :show] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: :destroy
end
