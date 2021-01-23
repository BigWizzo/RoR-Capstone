Rails.application.routes.draw do
  resources :subjects do
    resources :clockings
  end
  devise_for :students, :controllers => { registrations: 'registrations'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "subjects#all"

  get 'all', to: 'subjects#all'
  get 'select', to: 'subjects#select'
end
