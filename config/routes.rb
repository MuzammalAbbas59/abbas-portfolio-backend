Rails.application.routes.draw do
  resources :experiences, only: [:index]
  resources :hobbies, only: [:index]
  resources :contacts, only: [:index]
  resources :projects, only: [:index]
  resources :poetries, only: [:index]
end