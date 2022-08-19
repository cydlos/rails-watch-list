Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :list, only: %i[index new show create] do
    resources :bookmarks, only: %i[destroy new create]
  end
end
