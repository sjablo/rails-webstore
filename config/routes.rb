Rails.application.routes.draw do
  
  resources :products do
	resources :comments
  end
  root 'welcome#index'
end
