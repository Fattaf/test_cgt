# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :prompts, only: [:index] do
    collection do
      get :search
    end
  end

  root to: 'prompts#index'
end
