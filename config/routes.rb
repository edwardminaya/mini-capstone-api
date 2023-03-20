Rails.application.routes.draw do
  # PRODUCT
  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  post "/products" => "products#create"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"

  # SUPPLIER
  get "/suppliers" => "suppliers#index"
  get "/suppliers/:id" => "suppliers#show"
  post "/suppliers" => "suppliers#create"
  # make one for update
  # make one for destory

  # USER
  post "/users" => "users#create"

  # SESSIONS
  post "/sessions" => "sessions#create"

  # ORDERS
  get "/orders" => "orders#index"
  get "/orders/:id" => "orders#show"
  post "/orders" => "orders#create"

  # CARTED PRODUCTS
  post "/carted_products" => "carted_products#create"
  get "/carted_products" => "carted_products#index"
  delete "/carted_products/:id" = > "carted_products#destroy"
end
