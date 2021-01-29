Rails.application.routes.draw do
  resources :subjects
  resources :clockings

  devise_for :students, :controllers => { registrations: 'registrations'}
  root to: "subjects#home"
  get 'home', to: 'subjects#home'
  # get 'all', to: 'subjects#all'
  get 'select', to: 'subjects#select'
  get 'external', to: 'clockings#external'
end
