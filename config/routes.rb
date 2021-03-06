Rails.application.routes.draw do

  get 'sessions/new'

  get 'users/new'


  get 'posts/index'
  resources :posts
  root 'posts#index'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  get '/search', to: 'search#search', :as => 'search_page'
  
  resources :users, param: :username
  resources :favorite_posts, only: [:create, :destroy]
  resources :favorites

  resources :posts do
    resources :comments
  end
  resources :comments do
  resources :comments
end
  
  resources :posts do
    member do
      put "upvote", to: "posts#upvote"
      put "downvote", to: "posts#downvote"
    end
  end
  resources :comments do
    member do
      put "upvote", to: "comments#upvote"
      put "downvote", to: "comments#downvote"
    end
  end
  resources :channels
  resources :channels do
    member do
      put "subscribe", to: "channels#subscribe"
      put "unsubscribe", to: "channels#unsubscribe"
    end
  end
  
  # --------Uncomment this (and comment out the root to view Cats channel)
  # root 'viewchannel#index'
  
  
  
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
