Rails.application.routes.draw do
  resources :memberships, only: [:new, :create, :show]
  resources :clients
  resources :gyms, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
