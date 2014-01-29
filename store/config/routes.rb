Store::Application.routes.draw do

	resources :categories, :products

	root to: 'categories#index', as: :index

  put '/categories/:id', to: 'categories#update', as: :category_update
  put '/products/:id', to: 'products#update', as: :product_update
  delete '/products/:id', to: 'products#delete', as: :product_delete
  delete '/categories/:id', to: 'categories#delete', as: :category_delete
	
	
#           Prefix Verb   URI Pattern                    Controller#Action
#           ---------------------------------------------------------------
#      categories GET    /categories(.:format)          categories#index
#                 POST   /categories(.:format)          categories#create
#    new_category GET    /categories/new(.:format)      categories#new
#   edit_category GET    /categories/:id/edit(.:format) categories#edit
#        category GET    /categories/:id(.:format)      categories#show
#                 PATCH  /categories/:id(.:format)      categories#update
#                 PUT    /categories/:id(.:format)      categories#update
#                 DELETE /categories/:id(.:format)      categories#destroy
#        products GET    /products(.:format)            products#index
#                 POST   /products(.:format)            products#create
#     new_product GET    /products/new(.:format)        products#new
#    edit_product GET    /products/:id/edit(.:format)   products#edit
#         product GET    /products/:id(.:format)        products#show
#                 PATCH  /products/:id(.:format)        products#update
#                 PUT    /products/:id(.:format)        products#update
#                 DELETE /products/:id(.:format)        products#destroy
#           index GET    /                              categories#index
# category_update PATCH  /categories/:id(.:format)      categories#update
#  product_update PATCH  /products/:id(.:format)        products#update
 
end
