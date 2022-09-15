Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do
    namespace :v1 do
      post '/subscriptions', to: 'subscriptions#create'
      resources :customers, only: [:show] do
        resources :subscriptions, only: [:index, :update]
      end
    end
  end
end
