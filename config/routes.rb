Rails.application.routes.draw do
  resources :burgers do
    post 'apply_promo', on: :member
  end
  resources :promotions
  # Root route
  root "burgers#index"
end
