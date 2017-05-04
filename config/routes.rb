Rails.application.routes.draw do
  resources :enderecos
  get 'welcome/index'
  get 'welcome/dash'
  root 'welcome#index'

  resources :cids
  resources :logins
  resources :datalogs
  resources :carteirinhas
  resources :requisicaos
  resources :pessoas
  resources :logs
  resources :categoria
  resources :documentos
  resources :funcionarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  
end
