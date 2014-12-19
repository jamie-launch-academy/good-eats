Rails.application.routes.draw do
  get 'welcome/index'

  resources :restaurants, only: [:index, :create, :new, :show] do
    resources :reviews, only: [:new, :create, :show]
  end

  root 'welcome#index'
end
