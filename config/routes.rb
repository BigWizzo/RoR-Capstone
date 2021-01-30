Rails.application.routes.draw do
  resources :subjects
  resources :clockings, except: [:show]

  devise_for :students, :controllers => { registrations: 'registrations'}
  root to: "subjects#home"
  get 'home', to: 'subjects#home'
  get 'external', to: 'clockings#external'
end
