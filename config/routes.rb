


Rails.application.routes.draw do
  resources :movies
  resources :lists do
    resources :bookmarks , only: [:create, :new ]
  end
  resources :bookmarks, only: [:destroy]
end
