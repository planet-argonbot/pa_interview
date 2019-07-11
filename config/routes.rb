Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :dashboards, only: [:index]
  root to: 'dashboards#index'
end
