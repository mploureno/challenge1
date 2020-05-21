Rails.application.routes.draw do
  resources :clients

  root to: 'static_pages#index'
end
	



