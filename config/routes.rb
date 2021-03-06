Rails.application.routes.draw do
  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}
  resources :users
  resources :products
  
  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/index'

  get 'static_pages/featured'

  post 'static_pages/thank_you'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 	root 'static_pages#featured'


	resources :orders, only: [:index, :show, :create, :destroy]

end

