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


  helper_method :getPessoaById
  def getPessoaById()
    +
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

  helper_method :authAdmin
  def authAdmin()
    if current_usuario.try(:admin?)
      true
    else
      redirect_to root_path
    end 
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
    if current_usuario.try(:admin?)
      return dash_dashFuncionario_path
    elsif current_usuario.try(:funcionario?)
      return dash_dashFuncionario_path
    elsif usuario_signed_in?
      return dash_dashUsuario_path
    else
      return usuario_session_path
    end
  end


  helper_method :redirectTypeOfUser
  def redirectTypeOfUser()
    redirect_to isLogged()
  end

  helper_method :returnReqq
  def returnReqq()
    @req = Requisicao.all
    @reqId
    @pes = Pessoa.all
    @pesId
    @retorno
    @pes.each do |pes|
      if pes.usuario_id == current_usuario.id
        @pesId = pes.id
      end
    end
    if @pesId == nil
      return nil
    end
    @req.each do |req|
      if req.pessoa_id == @pesId
        return req.id
      end
    end
    return nil
  end

  #Pessoa init
  helper_method :returnPes
  def returnPes()
    @pessoa = Pessoa.all
    @retorno
    @pessoa.each do |itera|
      if itera.usuario_id == current_usuario.id
         return itera.id
      else
        @retorno = nil
      end
    end
    return @retorno
  end



  helper_method :returnPesEnd
  def returnPesEnd()
    @iter = returnPes()
    if @iter != nil
      return edit_pessoa_path(@iter)
    else
      return new_pessoa_path
    end
  end
  #Pessoa end


  #Documento init
  helper_method :returnDoc
  def returnDoc()
    @documentos = Documento.all
    @pessoaId = returnPes()
    if @pessoaId != nil
      @pessoa = Pessoa.find(@pessoaId)
      #return @pessoa.id
      @retorno
      @documentos.each do |itera|
        if itera.pessoa_id == @pessoa.id
           return itera.id
        else
          @retorno = nil
        end
      end
      return @retorno
    end
  end



  helper_method :returnDocEnd
  def returnDocEnd()
    @iter = returnDoc()
    if @iter != nil
      return edit_documento_path(@iter)
    else
      return new_documento_path
    end
  end
  #Documento end


  #Endereço init
  helper_method :returnEnd
  def returnEnd()
    @endereco = Endereco.all
    @pessoaId = returnPes()
    if @pessoaId != nil
      
      @pessoa = Pessoa.find(@pessoaId)
      #return @pessoa.id
      @retorno
      @endereco.each do |itera|
        if itera.pessoa_id == @pessoa.id
           return itera.id
        else
          @retorno = nil
        end
      end
      return @retorno
    end
  end



  helper_method :returnEndEnd
  def returnEndEnd()
    @iter = returnEnd()
    if @iter != nil
      return edit_endereco_path(@iter)
    else
      return new_endereco_path
    end
  end

  helper_method :returnEndIf
  def returnEndIf()
    @iter = returnEnd()
    if @iter != nil
      return root_path
    else
      return new_endereco_path
    end

  end
  #Endereço end



  #Requisição init
  helper_method :returnReq
  def returnReq()
    @requisicao = Requisicao.all
    @pessoaId = returnPes()
    if @pessoaId != nil
      @pessoa = Pessoa.find(@pessoaId)
      #return @pessoa.id
      @retorno
      @requisicao.each do |itera|
        if itera.pessoa_id == @pessoa.id
           return itera.id
        else
          @retorno = nil
        end
      end
      return @retorno
    end
  end



  helper_method :returnReqEnd
  def returnReqEnd()
    @iter = returnReq()
    if @iter != nil
      return edit_requisicao_path(@iter)
    else
      return new_requisicao_path
    end
  end
  #Requisição end


  #Carteirinha init
  helper_method :returnCar
  def returnCar()
    @carteirinhas = Carteirinha.all

    @reqId = returnReqq()
    if @reqId != nil
      @req = Requisicao.find(@reqId)
      #return @pessoa.id
      @retorno
      @carteirinhas.each do |itera|
        if itera.requisicao_id == @req.id
           return itera.id
        else
          @retorno = nil
        end
      end
      return @retorno
    end
  end



  helper_method :returnCarEnd
  def returnCarEnd()
    @iter = returnCar()
    if @iter != nil
      return edit_carteirinha_path(@iter)
    else
      return new_carteirinha_path
    end
  end
  #Carteirinha end

end