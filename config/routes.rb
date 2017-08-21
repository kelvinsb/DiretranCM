Rails.application.routes.draw do
  resources :info_carteirinhas
  resources :inf_carteirinhas
  get 'usuarios/listar'

  get 'msg/index'

  resources :cids
  resources :carteirinhas
  resources :requisicoes
  resources :documentos
  resources :enderecos
  resources :pessoas
  get 'dash/index'
  get "dash/dashFuncionario", to: "dash#dashFuncionario"
  get "dash/dashUsuario", to: "dash#dashUsuario"

  root 'dash#index'
  

  devise_for :usuarios

  devise_scope :usuario do
     root to: "devise/sessions#new"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
