Rails.application.routes.draw do
  root to: 'lists#index'
  resources :lists, only: [:new, :show, :create] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
end
