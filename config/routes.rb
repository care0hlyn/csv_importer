Rails.application.routes.draw do
  resources :albums do
    collection { post :import }
  end

  root to: "albums#index"
end