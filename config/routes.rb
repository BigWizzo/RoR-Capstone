Rails.application.routes.draw do
  resources :subjects
  resources :clockings

  devise_for :students, :controllers => { registrations: 'registrations'}
  root to: "clockings#home"
  # get 'home', to: 'subjects#home'
  get 'external', to: 'clockings#external'
end
