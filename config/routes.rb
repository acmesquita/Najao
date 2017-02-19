Rails.application.routes.draw do
 
  root 'registros#index'
  resources :saidas
  resources :entradas
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :registros
  resources :associados
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
