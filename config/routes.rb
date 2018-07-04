Rails.application.routes.draw do
  devise_for :users

  resources :events do
    resources :job_listings do
      resources :bookings
    # only: [:create, new, edit, delete]
  end
end

root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
