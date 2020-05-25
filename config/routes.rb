Rails.application.routes.draw do
  devise_for :users
  resources :clients
  
  get :index, controller: :static_pages
  root to: 'static_pages#index'
end
	



