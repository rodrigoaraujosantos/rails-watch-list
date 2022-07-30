Rails.application.routes.draw do
  root to: 'lists#index'
  resources :lists, only: [:new, :show, :create, :destroy], shallow: true do
    resources :bookmarks, only: [:create, :destroy]
  end
  #resources :bookmarks, only: [:destroy]
end
