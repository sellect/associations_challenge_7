AssociationsChallenge::Application.routes.draw do
  # get '/', to: "orders#index"
  # get '/new_order', to: "orders#new"
  resources :orders
  resources :customers
  resources :notes
end
