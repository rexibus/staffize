Rails.application.routes.draw do
  devise_for :users

  resources :events do
    resources :job_listings, only: [:new, :create, :edit, :update] do
      resources :bookings, only: [:new, :create, :edit, :update, :index]
    end
  end

  resources :job_listings, only: [:index, :show, :destroy, :create] do
    collection do
      get "candidates" # /job_listings/candidates
      get "candidates/:id", to: "job_listings#candidate_show", as: :candidate
    end

    member do
      get "candidates", to: "job_listings#my_applicants", as: :my_applicants # /job_listings/:id/candidates
    end
  end

  get "/bookings/:id", to: "bookings#accept_booking", as: :elisabetta
  resources :bookings, only: [:destroy]
  get "/bookings", to: "bookings#my_bookings"
  post "/bookings", to: "bookings#create"
  get "/offers", to: "pages#offers"
  get "/applicants", to: "pages#applicants"
  get "/received_offers", to: "pages#received_offers"
  get "/received_offers/:id", to: "pages#accept_offer", as: :velaj
  get "/staff", to: "pages#staff"
  get "/candidate_jobs", to: "pages#candidate_jobs"
  delete "/offer/:id", to: "pages#delete_offers", as: :offer
  delete "/staff/:id", to: "pages#delete_hired", as: :regis
  get "/applicant/:id", to: "pages#accept_applicant", as: :eli
  delete "/candidate_jobs/:id", to: "pages#delete_my_job", as: :arbi





root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
