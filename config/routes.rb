WhoAreBetter::Application.routes.draw do
  resources :purchases

  resources :carts

  resources :comments

  resources :models

  resources :companies

  resources :batteries
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
 
  
  root  'pages#home'
  #root 'search#new'
  match '/', to: 'stats#new', via: 'get'
  match '/id', to: 'pages#id', via: 'get'
  match '/signup', to: 'users#new', via: 'get'
  match '/signin', to: 'sessions#new', via: 'get'  
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  match '/search', to: 'infos#redirect', via: 'get'
  match '/faq', to: 'pages#faq', via: 'get'
  match '/cart', to: 'pages#cart', via: 'get'
  match '/info/:searchline(.:format)', to: 'infos#show', via: 'get'
  match '/send/:battery(.:format)', to: 'comments#add', via: 'get'
  match '/add/:battery(.:format)', to: 'carts#add', via: 'put'
  match '/remove/:battery(.:format)', to: 'carts#remove', via: 'put'
  match '/checkout/', to: 'carts#checkout', via: 'put'
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
