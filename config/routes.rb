Rails.application.routes.draw do
  resources :tasks do
    member do
      post :status, to: "tasks#update_status"
    end
  end
  resources :genres
end
