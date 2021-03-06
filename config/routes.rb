MoleValleyNaturalHistory::Application.routes.draw do
  devise_for :users

  # match 'home/what_is_here/:key' => 'home#what_sub'

  get "home/index"

  get "home/resource"

  get "home/ogranisation"

  get "home/what_is_here/"

  #get "home/what_sub/:key" => HomeController.action(:what_sub)

  #Optional methods
  get "home/what_is_here/:key" => "home#what_sub", :as => :home_what_sub

  get "home/event"

  get "home/contact_us"

  root :to => 'home#index'
  #match '/contact_us', :to => 'home#contact_us'
  #match '/event', :to => 'home#event'
  #match '/ogranisation', :to => 'home#ogranisation'
  # match '/resource', :to => 'home#resource', :via => :put
  #match '/what_is_here', :to => 'home#what_is_here'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
