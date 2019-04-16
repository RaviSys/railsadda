Rails.application.routes.draw do
  root 'home#index'
  get '/aboutus' => "home#about"
  devise_for :users

  namespace :user do 
    get 'activities' => 'sites#activities' 
  end

  resources :questions do 
    member do
      patch "like", to: "questions#upvote"
      patch "dislike", to: "questions#downvote"
    end
  end

  namespace :admin do 
    get 'dashboard' => "sites#dashboard"
    resources :questions
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
