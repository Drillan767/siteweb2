Rails.application.routes.draw do

  resources :photos
  resources :portfolios


  #Index (duh)
  root to: 'page#index'

  #Pages visibles uniquement par moi si je suis co
  authenticated :user do
    #Index admin
    match '/admin', to: 'page#admin', via: :get
    resources :articles
  end

  #Gestion utilisateur
  devise_for :users, :controller => { :registrations => 'registrations' }

  #Se logger en tapant /login plutôt que /users/login, un poil moins relou
  devise_scope :user do
    get '/login' => 'devise/sessions#new'
    resources :photos
    resources :portfolios
  end

  #Pages du portfolio visibles par les visiteurs
  resources :photos, only: [:show]
  resources :portfolios, only: [:show, :index]

  #Pages des articles visibles par les visiteurs
  resources :articles, only: [:show, :index]

  #Partie contact
  get '/contact', to: 'contacts#new', as: :new_contact
  post '/contact', to: 'contacts#create', as: :contacts




  #Pages statiques
  #get 'page/index'

  #get 'page/cgu'

  #get 'page/map'

end
