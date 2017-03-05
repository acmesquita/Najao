Rails.application.routes.draw do
 
  root 'registros#index'
  resources :saidas
  resources :entradas
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :registros
  resources :associados
  resources :home

  match 'configuracao', :to => 'home#index', via: 'get'


  match 'rack',
   :to => proc{|env| [200, {"Content-Type" => "text/html"}, 
  ["App Rack numa rota Rails"]]}, via:'get'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
