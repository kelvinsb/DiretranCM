Rails.application.routes.draw do
  resources :enderecos
  resources :pessoas
  get 'dash/index'

  root 'dash#index'

 # devise_for :administradors
  devise_for :usuarios

  devise_scope :usuario do
     root to: "devise/sessions#new"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
