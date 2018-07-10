Rails.application.routes.draw do

  #Rotas para frontend
  get '/', to: 'home#index'
  get 'sobre', to: 'home#sobre'
  get 'noticias', to: 'home#noticias'
  get 'noticia_view/:id', to: 'home#noticia_view'
  get 'galerias', to: 'home#galerias'
  get 'galeria_view/:id', to: 'home#galeria_view'
  get 'videos', to: 'home#videos'
  get 'contato', to: 'home#contato'
  post 'send_contato', to: 'home#send_contato'

  # rotas devise
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'sign_up'}

  #Rotas para ações de usuários
  # get    'signup'  ,to: 'users#new'
  # get    'login'   ,to: 'sessions#new'
  # post   'login'   ,to: 'sessions#create'
  # delete 'logout'  ,to: 'sessions#destroy'
  # resources :users
  # resource :sessions, :only => [:create, :new, :destroy]

  #Rotas para admin
  namespace :adm do
    root to: 'dashboard#index'
    get 'dashboard', to: 'dashboard#index'
    get 'galerias/imagem_capa/:id', to: 'galerias#imagem_capa'
    resources :banners
    resources :noticias
    resources :videos
    resources :galerias
    resources :galerias_imagens
  end

  #Rotas de autenticação
  namespace :auth do
    resources :roles
  end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
