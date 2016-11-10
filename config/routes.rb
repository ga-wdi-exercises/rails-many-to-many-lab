Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => "appointments#index"
  resources :doctors
  resources :patients
  resources :appointments, except: :show
end
