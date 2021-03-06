Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :doses, only: [:destroy]
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
