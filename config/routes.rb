Rails.application.routes.draw do
  root to: 'doctors#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :doctors
  resources :patients
  resources :appointments

end
