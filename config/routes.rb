Rails.application.routes.draw do
  resources :subjects
  resources :courses
  resources :instructors
  root 'application#links'
end
