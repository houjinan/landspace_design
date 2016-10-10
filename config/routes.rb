Rails.application.routes.draw do
  get 'home/index'
  get 'home/photo'
  root 'home#index'

  get 'site' => 'home#site', controller: 'home'
  get 'photo' => 'home#photo', controller: "home"
end
