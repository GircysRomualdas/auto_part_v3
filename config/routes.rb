Rails.application.routes.draw do
  resources :part_types
  resources :car_parts

  get "admin/index"
  get "home/index"

  root "home#index"

  devise_for :admins

  namespace :admin do
    resources :orders
    resources :car_parts do
      resources :stocks
    end
    resources :part_types
  end

  authenticated :admin_user do
    root "admin#index", as: :admin_root
  end
end
