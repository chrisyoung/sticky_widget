ActionController::Routing::Routes.draw do |map|
  map.resources :pages
  map.resource :search, :controller => 'search', :action => :show
end
