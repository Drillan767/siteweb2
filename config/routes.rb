Rails.application.routes.draw do

  # Index (duh)
  root to: 'page#index'

  # Pages visibles uniquement par moi si je suis co
  authenticated :user do
    #Index admin
    match '/admin', to: 'page#admin', via: :get
    resources :articles
  end

  # Gestion utilisateur
  devise_for :users, :controller => { :registrations => 'registrations' }

  # Se logger en tapant /login
  devise_scope :user do
    get '/login' => 'devise/sessions#new'
  end

  # Pages du portfolio visibles par les visiteurs
  resources :photos, only: [:show]
  resources :portfolio, only: [:show, :index]

  # Pages des articles visibles par les visiteurs
  resources :articles, only: [:show, :index]

  # Partie contact
  get '/contact', to: 'contacts#new', as: :new_contact
  post '/contact', to: 'contacts#create', as: :contacts

  # Page 'à propos'

  match '/a-propos', to: 'page#about', via: :get
  match '/mentions', to: 'page#cgu', via: :get



  # Pages statiques


  #get 'page/map'

end
