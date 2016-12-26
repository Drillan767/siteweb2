Rails.application.routes.draw do


  mount Ckeditor::Engine => '/ckeditor'

  # Index (duh)
  root to: 'page#index'

  # Pages visibles uniquement par moi si je suis co
  authenticated :user do
    #Index admin
    get '/admin' => 'page#admin'
    resources :portfolios, path: 'portfolio'
    resources :articles
  end

  # Gestion utilisateur
  devise_for :users, except: :new_session_user, :controller => { :registrations => 'registrations' }

  # Se logger en tapant /login
  devise_scope :user do
    get '/login' => 'devise/sessions#new', as: :login
  end

  # Pages du portfolio visibles par les visiteurs
  resources :photos, only: [:show]
  resources :portfolios, path: 'portfolio', only: [:show, :index]

  # Pages des articles visibles par les visiteurs
  resources :articles, only: [:show, :index]

  # Partie contact
  get '/contact', to: 'contacts#new', as: :new_contact
  post '/contact', to: 'contacts#create', as: :contacts

  # Page 'à propos'

  match '/a-propos', to: 'page#about', via: :get
  match '/mentions', to: 'page#cgu', via: :get

end
