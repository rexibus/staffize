Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :job_listings do
    resources :bookings, only: [:show, :create, :new, :edit]
  end

  get 'bookings', to: 'bookings#index'
  delete 'bookings/:id', to: 'bookings#destroy', as: :booking
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
