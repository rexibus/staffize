Rails.application.routes.draw do
  devise_for :users

#   resources :events do
#     resources :job_listings do
#       resources :bookings
#     # only: [:create, new, edit, delete]
#   end
# end
  resources :events do
    resources :job_listings, only: [:new, :create, :edit, :update] do
      resources :bookings, only: [:new, :create, :edit, :update, :index]
      end
    end

  resources :job_listings, only: [:index, :show, :destroy]
  resources :bookings, only: [:destroy]
  get "/bookings", to: "bookings#my_bookings"

root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end



# resources :events
