Rails.application.routes.draw do
  resources :some_products
  resources :contacts
  resources :products
  resources :sub_categories
  resources :categories
  resources :catalogs
  resources :suppliers
  resources :sliders
  devise_for :users
  root 'home#index'

  get 'home/about_us', as: "about_us"

  get 'home/contact_us', as: "contact_us"

  post 'create_contact', to: 'contacts#create_contact', as: "create_contact"

  get 'show_subCategoria/:id', to: 'home#show_subCategoria', as: "show_subCategoria" 
  get 'show_categoria/:id', to: 'home#show_categoria', as: "show_categoria" 


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
