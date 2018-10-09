Rails.application.routes.draw do
  get 'static_pages/home'
  resources :subjects
  resources :courses
  resources :instructors
  root 'static_pages#home'
end
