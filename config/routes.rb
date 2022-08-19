Rails.application.routes.draw do
  resources :lists, except: %i[destroy update edit] do
    resources :bookmarks, only: %i[new create]
  end
  resources :bookmarks, only: :destroy
  root 'lists#index'
end
