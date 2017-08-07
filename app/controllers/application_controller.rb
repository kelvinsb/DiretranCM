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

  helper_method :authFuncionario
  def authFuncionario()
    if current_usuario.try(:funcionario?)
      true
    else
      redirect_to root_path
    end
  end

  helper_method :authFunc
  def authFunc()
    if current_usuario.try(:funcionario?)
      true
    else
      redirect_to root_path
    end 
  end

 # helper_method :isActualUser
 # def isActualUser()
 #   @pessoa = returnPes()
 #   if @pessoa == params[:id]
 #     return true
 #   end
  #  return false
 # end



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

  helper_method :returnReqEnd
  def returnReqEnd()
    @iter = returnReqq()
    if @iter != nil
      return edit_requisicao_path(@iter)
    else
      return new_requisicao_path
    end
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

  #Cid init
  helper_method :returnCid
  def returnCid()
    @cid = Cid.all

    @reqId = returnReqq()
    if @reqId != nil
      @req = Requisicao.find(@reqId)
      #return @pessoa.id
      @retorno
      @cid.each do |itera|
        if itera.requisicao_id == @req.id
           return itera.id
        else
          @retorno = nil
        end
      end
      return @retorno
    end
  end



  helper_method :returnCidEnd
  def returnCidEnd()
    @iter = returnCar()
    if @iter != nil
      return edit_cid_path(@iter)
    else
      return new_cid_path
    end
  end
  #Cid end


#Carteirinhas Aprovadas
#Carteirinhas Aguardando
#Carteirinhas Reprovadas TODO
#Carteirinhas Vencidas TODO
  helper_method :aguardCarteirinhas
  def aguardCarteirinhas()
    @carteirinhas = Carteirinha.all
    @totalCarteirinhas = 0
    @carteirinhas.each do |carteirinha|
      if carteirinha.status == "Analise"
        @totalCarteirinhas = @totalCarteirinhas + 1
      end
    end
    return @totalCarteirinhas
  end

  helper_method :aprovCarteirinhas
  def aprovCarteirinhas()
    @carteirinhas = Carteirinha.all
    @totalCarteirinhas = 0
    @carteirinhas.each do |carteirinha|
      if carteirinha.status == "Aprovadas"
        @totalCarteirinhas = @totalCarteirinhas + 1
      end
    end
    return @totalCarteirinhas
  end

  helper_method :reprovCarteirinhas
  def reprovCarteirinhas()
    @carteirinhas = Carteirinha.all
    @totalCarteirinhas = 0
    @carteirinhas.each do |carteirinha|
      if carteirinha.status == "Reprovadas"
        @totalCarteirinhas = @totalCarteirinhas + 1
      end
    end
    return @totalCarteirinhas
  end

  helper_method :vencidasCarteirinhas
  def vencidasCarteirinhas()
    @carteirinhas = Carteirinha.all
    @totalCarteirinhas = 0
    @carteirinhas.each do |carteirinha|
      if carteirinha.status == "Vencidas"
        @totalCarteirinhas = @totalCarteirinhas + 1
      end
    end
    return @totalCarteirinhas
  end

  helper_method :returnPessoaOnUsuario
  def returnPessoaOnUsuario(idUsuario)
    @pessoas = Pessoa.all
    @pessoas.each do |pessoaa|
      if pessoaa.usuario_id == idUsuario
        return pessoaa.nome
      end
    end
    return nil
  end

  helper_method :returnReqObj
  def returnReqObj(reqId)
    #Pessoa, Endereço,Documento,Requisição
    #Pessoa.find(params[:id]).nome
    @requisicao = Requisicao.find(reqId)
    return @requisicao
  end

  helper_method :returnReqPes
  def returnReqPes(requisicao)
    return @requisicao.pessoa_id
  end

  helper_method :getPessoaByReq
  def getPessoaByReq(requisicao)
    @pessoa = nil
    @Pessoas = Pessoa.all
    @Pessoas.each do |apessoa|
      if apessoa.id == requisicao.pessoa_id
        return apessoa
      end
    end
    return nil
  end

  helper_method :returnPesByCar
  def returnPesByCar(carteirinha)
    @pessoa = nil

    @requisicao = nil
    @requisicoes  = Requisicao.all
    @requisicoes.each do |arequisicao|
      if arequisicao.id = carteirinha.requisicao_id
        @pessoa = getPessoaByReq(arequisicao)
        return @pessoa
      end
    end
  end


  helper_method :printAllDocuments
  def printAllDocuments(reqId)
    @pessoa = Pessoa.find(@requisicao.pessoa_id)
    #@endereco = Endereco.find(@requisicao.pessoa_id)
    #@documento = Document.find(@requisicao.pessoa_id)
    #@requisicao = Requisicao.find(@requisicao.pessoa_id)
    #@cid = Cid.find(@requisicao.pessoa_id)



    @lista = Array.new
    @lista << 'kelvin'
    @lista << 'rafael'
    return @pessoa.nome
  end


  helper_method :returnEnderecoByPes
  def returnEnderecoByPes(pesId)
    @endereco = Endereco.all
    @endereco.each do |ender|
      if ender.pessoa_id == pesId
        return ender
      end
    end
    return nil
  end

  helper_method :returnDocumentoByPes
  def returnDocumentoByPes(pesId)
    @documento = Documento.all
    @documento.each do |doc|
      if doc.pessoa_id == pesId
        return doc
      end
    end
    return nil
  end

  helper_method :returnRequisicaoByPes
  def returnRequisicaoByPes(pesId)
    @requisicao = Requisicao.all
    @requisicao.each do |req|
      if req.pessoa_id == pesId
        return req
      end
    end
    return nil
  end

  helper_method :returnCidByPes
  def returnCidByPes(pesId)
    @cid = Cid.all
    @cid.each do |cid|
      if cid.requisicao_id == returnRequisicaoByPes(pesId)
        return cid
      end
    end
    return nil
  end
end
