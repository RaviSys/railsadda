Rails.application.routes.draw do
  root 'home#index'
  get '/aboutus' => "home#about"
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
  }

  namespace :user do 
    get 'activities' => 'sites#activities' 
    get 'dashboard'  => 'sites#dashboard'
    get 'skills'    => 'sites#manage_skills'
    patch 'update_skills' => 'sites#update_skills'
    resources :articles
    resources :questions
    resources :work_samples
    resources :user_skills
  end

  resources :articles do 
    member do
      patch "like", to: "articles#upvote"
      patch "dislike", to: "articles#downvote"
    end
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
    resources :skills
    resources :subscriptions, only: [:index]
  end

  resources :subscriptions, only: [:create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
