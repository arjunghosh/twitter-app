ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'statuses'
  
  map.resources :statuses, :collection => {:mentions => :get, :favorites => :get}
  map.resources :direct_messages
  map.resources :users, :has_one => [:password, :confirmation]
  map.resources :passwords
  map.resources :friendships
  
  map.resource :session
  map.resource :authorization
end
