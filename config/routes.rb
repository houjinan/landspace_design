Rails.application.routes.draw do


  devise_for :users, controllers: { sessions: 'sessions' }
  get 'home/index'
  get 'home/photo'
  root 'home#index'

  get 'site' => 'home#site', controller: 'home'

  namespace :admin do
    get 'dashboard' => "dashboard#index", as: 'dashboard'
    resources :service_cases
    resources :members
    resources :attachments
    resources :system_configurations do
      collection do
        get :web_site_config
        post :web_site_config
        get :company_info_config
        post :company_info_config
      end
    end

    resources :news_trends
  end


  resources :service_cases
  resources :members
  resources :news_trends
end
