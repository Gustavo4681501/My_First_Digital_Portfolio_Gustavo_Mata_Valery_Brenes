Rails.application.routes.draw do
  resources :posts
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "users#about"
  resources :technologies
  resources :skill_types
  resources :user_types
  resources :social_links
  resources :skills
  resources :projects
  resources :contacts

  devise_scope :user do
    get "/users/sign_out", as: "sign_out", to: "devise/sessions#destroy"
  end

  namespace :admin, path: '/admin' do
    resources :projects
    resources :skills
    resources :skills_types
    resources :social_links
    resources :technologies
    resources :users
    resources :user_types
  end
end
