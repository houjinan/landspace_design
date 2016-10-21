Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'sessions' }
  get 'home/index'
  get 'home/photo'
  root 'home#index'

  get 'site' => 'home#site', controller: 'home'
  get 'photo' => 'home#photo', controller: "home"

  namespace :admin do
    get 'dashboard' => "dashboard#index", as: 'dashboard'
  end
end
