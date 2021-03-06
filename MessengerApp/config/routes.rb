Rails.application.routes.draw do
    #get '/messages' => 'messages#index'
    #root 'messages#index'
    root 'messages#home'
    get '/messages' => 'messages#index'
    get '/messages/new' => 'messages#new'
    post '/messages' => 'messages#create'
    get '/messages/:id' => 'messages#show', as: :message
    get '/messages/:id/new/Response' => 'responses#new', as: :responses
    get '/messages/:id/edit' => 'messages#edit'

    patch '/messages/:id' => 'messages#update'


    get '/messages/:message_id/Response/:id' => 'responses#edit', as: :response

    delete '/messages/:message_id/Response/:id' => 'responses#destroy'

    patch '/messages/:message_id/Response/:id' => 'responses#update' 



    post '/messages/:id/new/Response' => 'responses#create'
    
    delete '/messages/:id' => 'messages#destroy'

    post '/login' => 'sessions#create'

    get '/login' => 'sessions#new'

    delete 'logout' => 'sessions#destroy'

    get '/signup' => 'users#new', as: :signup
    #post '/signup' => 'users#create'
    resources :users

    #post '/messages/:id' => 'messages#destroy'
    #post '/messages/:id' => 'messages#reply'
    
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
