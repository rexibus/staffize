Rails.application.routes.draw do
  devise_for :users
  get 'job_listings/index'
  get 'job_listings/new'
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
