Rails.application.routes.draw do
  resources :customers

  get '' => 'finder#index', as: 'index'

  get 'alphabetized' => 'finder#alphabetized'

  get 'missing_email' => 'finder#missing_email', as: 'missing_email'

  root to: 'finder#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
