Rails.application.routes.draw do
  devise_for :users
  root to: "products#index"
  resources :products, only: %i[index show] do
    resources :buys, only: :create
  end
end
