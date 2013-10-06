PowrTrav::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  devise_for :system_admins
  root 'site_pages#index'
  
  post "/ticket_request/index"
  match ':controller/:action.:format', via: [:get, :post]
end
