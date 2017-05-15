Rails.application.routes.draw do
  resources :cadastros
  get 'dash/index'

  root 'dash#index'

  devise_for :administradors
  devise_for :usuarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
