Rails.application.routes.draw do


 root 'top#index'

 get 'orders/index'
 get 'orders/pay'

 resources :orders, only: [:new, :create, :index, :show, :edit, :update, :destroy, :pay]
 

 devise_for :companies
 resources :companies, only: [:show, :edit, :update, :check, :withdrawl, :delete,]

 resources :companies do
        member do
            get "check"
            
            patch "withdrawl"
  
 end
end
  devise_for :illustrators
  namespace :illustrators do
  resources :illustrators, only: [:show, :edit, :update, :check, :withdrawl, :delete, :index]
  
end

resources :illustrators do
        member do
            get "check"
            
            patch "withdrawl"
            
 end
end
end