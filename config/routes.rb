Rails.application.routes.draw do
  resources :to_arduinos
  resources :from_arduinos
  root 'readings#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
