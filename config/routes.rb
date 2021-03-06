Rails.application.routes.draw do


  namespace :site do
    get 'welcome/index'
    get 'search', to: 'search#questions'
    get 'subject/:subject_id', to: 'search#subject', as:'search_subject'
    post 'answer', to: 'answer#question'
  end
  namespace :users_backoffice do
    get 'welcome/index'
  end
  namespace :admins_backoffice do
    get 'welcome/index'
    resources :admins
    resources :subjects
    resources :questions
  end

  devise_for :admins, skip: [:registrations]
  devise_for :users

  get 'inicio', to: 'site/welcome#index'

  root to: 'site/welcome#index'
end
