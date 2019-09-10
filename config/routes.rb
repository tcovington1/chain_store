Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'stores#index'

  resources :stores do
  resources :products
  end
  resources :products do
    resources :reviews
  end

end
