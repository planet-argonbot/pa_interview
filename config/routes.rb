# frozen_string_literal: true
Rails.application.routes.draw do
  root 'posts#new'

  resources :users
  resources :posts
end
