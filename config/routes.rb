Rails.application.routes.draw do
  root to: "products#index"
  # devise_for :users
  resources :products, only: %i[index show] do
    resources :buys, only: :create
  end
end
