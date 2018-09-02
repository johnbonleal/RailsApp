Rails.application.routes.draw do
  devise_for :admins
  devise_for :super_admins
  resources :members  
  devise_for :users
  mount RailsAdmin::Engine => '/command_center/super_admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
