Rails.application.routes.draw do
  root 'top#index'
	
 devise_for :companies
 resources :companies, only: [:show, :edit, :update, :check, :withdrawl]
 resources :companies do
        member do
            get "check"
            
            patch "withdrawl"
  
 end
end
  devise_for :illustrators
  namespace :illustrators do
  resources :illustrators, only: [:show, :edit, :update, :check, :withdrawl, :destroy]
  
end

resources :illustrators do
        member do
            get "check"
            
            patch "withdrawl"
            
 end
end
end