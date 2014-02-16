Bahai2::Application.routes.draw do
  resources :minutes do
    resources :entries, except: :index
  end
  # resources :minutes
  resources :entries, except: :index
  # get 'minutes/:id/entries/new'       => 'entries#new', as: :new_entry
  # get 'minutes/:id/entries/:entry_id' => 'entries#show', as: :entry
  # get 'minutes/:minute_id/entries/'          => 'entries#index', as: :entries
  # post 'minutes/:id/entries/'          => 'entries#update', via: :post, as: :entries


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'minutes#index'
  get 'configurations' => 'application#configurations', as: :configurations

  put    'save_ael_via_ajax'   => 'aels#save',   as: :save_ael
  delete 'delete_ael_via_ajax' => 'aels#delete', as: :delete_ael

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
