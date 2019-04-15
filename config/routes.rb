Rails.application.routes.draw do
  root 'home#index'
  get '/aboutus' => "home#about"
  devise_for :users

  namespace :user do 
    get 'activities' => 'sites#activities' 
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
