Rails.application.routes.draw do
  resources :subjects do
  resources :clockings, except: [:index, :show]
  end
  devise_for :students, :controllers => { registrations: 'registrations'}
  root to: "subjects#home"
  get 'home', to: 'subjects#home'
  get 'all', to: 'subjects#all'
  get 'select', to: 'subjects#select'
  get 'external', to: 'subjects#external'
end
