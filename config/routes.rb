 Rails.application.routes.draw do |map|
   map.resources :news, :controller => 'ecm/frontend/news', :only => [:index, :show]
 end

