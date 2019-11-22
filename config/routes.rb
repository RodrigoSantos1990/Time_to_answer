Rails.application.routes.draw do


  devise_for :users
  namespace :site do
    get 'welcome/index'
  end
  namespace :users_backoffice do
    get 'welcome/index'
  end
  namespace :admins_backoffice do
    get 'welcome/index'
    resources :admins, only: [:index, :edit, :update]
  end
  devise_for :admins

  root to: 'site/welcome#index'
end
