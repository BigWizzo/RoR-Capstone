Rails.application.routes.draw do
  resources :subjects
  devise_for :students, :controllers => { registrations: 'registrations'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "subjects#index"
end
