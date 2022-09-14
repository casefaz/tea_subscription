Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do
    namespace :v1 do
      get '/customers/:id/subscriptions', to: 'customer_subscriptions#index'
      post '/subscriptions', to: 'subscriptions#create'
      delete '/customers/:id/subscriptions/:id', to: 'customer_subscriptions#destroy'
    end
  end
end
