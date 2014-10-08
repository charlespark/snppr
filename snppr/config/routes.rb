Rails.application.routes.draw do
  
  #get "ENV['BASE_URL']/:slug", to: 'urls#show', as: 'url'
  resources :urls, only:[:index, :new, :show, :create, :edit, :update]
  resources :pages
  resources :users

  namespace "api", defaults: { format: 'json' } do
    resources :urls
  end



#      Prefix Verb   URI Pattern                  Controller#Action
#         urls GET    /urls(.:format)              urls#index
#              POST   /urls(.:format)              urls#create
#      new_url GET    /urls/new(.:format)          urls#new
#     edit_url GET    /urls/:id/edit(.:format)     urls#edit
#          url GET    /urls/:id(.:format)          urls#show
#              PATCH  /urls/:id(.:format)          urls#update
#              PUT    /urls/:id(.:format)          urls#update
#        pages GET    /pages(.:format)             pages#index
#              POST   /pages(.:format)             pages#create
#     new_page GET    /pages/new(.:format)         pages#new
#    edit_page GET    /pages/:id/edit(.:format)    pages#edit
#         page GET    /pages/:id(.:format)         pages#show
#              PATCH  /pages/:id(.:format)         pages#update
#              PUT    /pages/:id(.:format)         pages#update
#              DELETE /pages/:id(.:format)         pages#destroy
#        users GET    /users(.:format)             users#index
#              POST   /users(.:format)             users#create
#     new_user GET    /users/new(.:format)         users#new
#    edit_user GET    /users/:id/edit(.:format)    users#edit
#         user GET    /users/:id(.:format)         users#show
#              PATCH  /users/:id(.:format)         users#update
#              PUT    /users/:id(.:format)         users#update
#              DELETE /users/:id(.:format)         users#destroy
#     api_urls GET    /api/urls(.:format)          api/urls#index {:format=>"json"}
#              POST   /api/urls(.:format)          api/urls#create {:format=>"json"}
#  new_api_url GET    /api/urls/new(.:format)      api/urls#new {:format=>"json"}
# edit_api_url GET    /api/urls/:id/edit(.:format) api/urls#edit {:format=>"json"}
#      api_url GET    /api/urls/:id(.:format)      api/urls#show {:format=>"json"}
#              PATCH  /api/urls/:id(.:format)      api/urls#update {:format=>"json"}
#              PUT    /api/urls/:id(.:format)      api/urls#update {:format=>"json"}
#              DELETE /api/urls/:id(.:format)      api/urls#destroy {:format=>"json"}



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
