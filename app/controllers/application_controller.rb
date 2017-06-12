class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  

  # !LER redirecionar, mudar ainda
  def after_sign_in_path_for(resource)
    if(getPessoa() != nil)
  	 dash_dashUsuario_path
    else
     new_pessoa_path
    end 
  end
  def after_sign_out_path_for(resource)
    root_path
  end

  helper_method :getPessoa
  def getPessoa()
    @Pessoas = Pessoa.all
    @Pessoas.each do |pessoa|
      if pessoa.usuario_id == current_usuario.id
        return pessoa
      end
    end
    return nil
  end

  helper_method :getUserId
  def getUserId(idDeviseUser)
    @Pessoas = Pessoa.all
    @Pessoas.each do |usuario|
      if usuario.usuario_id == idDeviseUser
        return usuario.id
      end
    end
    return 0
  end
  helper_method :verifyUser
  def verifyUser()
    @UsuarioId = getUserId(current_usuario.id)
    if @UsuarioId == 0
      return new_pessoa_path
    end
    else
       return edit_pessoa_path(@UsuarioId)
  end
  helper_method :isLogged
  def isLogged()
    if usuario_signed_in?
      return dash_dashUsuario_path
    elsif administrador_signed_in?
       return dash_dashFuncionario_path
    else
      return usuario_session_path
    end
  end
  helper_method :redirectTypeOfUser
  def redirectTypeOfUser()
    redirect_to isLogged()
  end

end