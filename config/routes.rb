ActionController::Routing::Routes.draw do |map|
  map.devise_for :users

  map.resources :roles

  map.resources :forum_permissions

  map.resources :posts

  map.resources :threads

  map.resources :forums

  # The priority is based upon order of creation: first created -> highest priority.

  map.root :controller => 'forums'

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
