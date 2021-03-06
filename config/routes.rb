SwIdentity::Application.routes.draw do
  root :to => "users#index"
  #get "home/index"

  #devise_for :users
  devise_for :users, :controllers => {:sessions => 'api_session'}, :skip => [:sessions] do
    post 'api/sign_in' => 'api_session#api_sign_in'
    get 'users/sign_in', :to => 'devise/sessions#new', :as => 'new_user_session'
    post 'users/sign_in', :to => 'devise/sessions#create', :as => 'user_session'
    get 'users/sign_out', :to => 'devise/sessions#destroy', :as => 'destroy_user_session'
  end
  
  match 'users' => 'users#index'
  match 'users/clear' => 'users#clear'
  post 'api/users' => 'api#user_register'
  post 'api/update_data_service_host' => 'api#update_data_service_host'
  post 'api/data_service_hosts' => 'api#data_service_hosts'
  
  #post 'api/sign_in' => 'api#sign_in'

#  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" } do
#    get 'sign_in', :to => 'users/sessions#new', :as => :new_user_session
#    get 'sign_out', :to => 'users/sessions#destroy', :as => :destroy_user_session
#  end

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
# root :to => "welcome#index"

# See how all your routes lay out with "rake routes"

# This is a legacy wild controller route that's not recommended for RESTful applications.
# Note: This route will make all actions in every controller accessible via GET requests.
# match ':controller(/:action(/:id(.:format)))'
end
