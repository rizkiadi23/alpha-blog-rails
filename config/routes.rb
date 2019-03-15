Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root  "pages#home"
  get   "pages/about" => "pages#about"

  # Article Routes
  resources :articles

  # User Routes
  get 'signup' => 'users#new'
  resources :users, except: [:new]

  # Session Routes
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  # Categories Routes
  resources :categories, except: [:destroy]
end
