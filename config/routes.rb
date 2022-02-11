Rails.application.routes.draw do
  root to: 'people#index'

  resources :people, only: [:index, :show, :edit, :update]

  namespace :api do
    resources :people, only: [:index, :show, :update]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
