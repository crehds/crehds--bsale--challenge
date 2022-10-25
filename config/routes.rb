Rails.application.routes.draw do
  # resources :categories do
  #   # /categories/:id/products_by_category
  #   get "products_by_category", on: :member
  # end

  resources :categories, only: %i[index]
  get "products/search--by--names/", to: "products#search_by_name"
  resources :products, only: %i[index show]
  get "/categories/:id/products", to: "categories#products_by_category"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
