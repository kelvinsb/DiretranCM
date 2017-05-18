class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  

  # !LER redirecionar, mudar ainda
  def after_sign_in_path_for(resource)
  	new_pessoa_path
  end

end