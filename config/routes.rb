Rails.application.routes.draw do
  resources :products
  resources :sub_categories
  resources :categories
  resources :catalogs
  resources :suppliers
  resources :sliders
  devise_for :users
  root 'home#index'

  get 'home/about_us'

  get 'home/contact_us'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
