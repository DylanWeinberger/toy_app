Rails.application.routes.draw do


 
  resources :organizations 
  resources :seeks

  resources :donators
  resources :toys
  resources :donors_toys
  resources :don_and_seek_connects
  resources :org_and_toy_connects
  resources :comments_org_donor_toys
  resources :comments_don_and_seeks
  resources :received_toys
  resources :orgprofiles
  # You can have the root of your site routed with "root"
  root 'toys#index'
  get 'login' => 'sessions#new', as: :login
  post 'login_don' => 'sessions#create_don_session'
  post 'login_org' => 'sessions#create_org_session'
  patch 'update_toy' => 'toys#update', as: :update_toy
  delete 'logout' => 'sessions#destroy', as: :logout
  # get 'seeks' => 'seeks#index', as: :seeks_path 

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
