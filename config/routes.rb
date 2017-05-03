Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/dash'
  root 'welcome#index'

  resources :logradouros
  resources :cids
  resources :cidades
  resources :logins
  resources :datalogs
  resources :enderecos
  resources :carteirinhas
  resources :requisicaos
  resources :pessoas
  resources :logs
  resources :categoria
  resources :documentos
  resources :bairros
  resources :funcionarios
  resources :estados
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  
end
