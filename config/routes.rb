Rails.application.routes.draw do
  resources :products

  scope '(:locale)' do
  	resources :products
  	root 'products#index', as: 'products_index', via: :all
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
