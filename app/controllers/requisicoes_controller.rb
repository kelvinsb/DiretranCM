class RequisicoesController < ApplicationController
  before_action :set_requisicao, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_usuario!, only: [:show, :new, :edit]
  before_action :authAdmin, only: [:index, :destroy]
  before_action :authFuncionario, only: [:index, :show]


  # GET /requisicoes
  # GET /requisicoes.json
  def index
    @requisicoes = Requisicao.all
  end

  # GET /requisicoes/1
  # GET /requisicoes/1.json
  def show
  end

  # GET /requisicoes/new
  def new
    @requisicao = Requisicao.new
  end

  # GET /requisicoes/1/edit
  def edit
  end

  # POST /requisicoes
  # POST /requisicoes.json
  def create
    @requisicao = Requisicao.new(requisicao_params)
    @requisicao.pessoa_id = Pessoa.find_by_usuario_id(current_usuario.id).id

    #@requisicao.data_emissao quando aprovar
    @requisicao.data_requisicao = Date.current
    if @requisicao.qtde_carteirinhas == nil
      @requisicao.qtde_carteirinhas = 0
    else
      @requisicao.qtde_carteirinhas = @requisicao.qtde_carteirinhas + 1
    end

    #@requisicao.funcionario quando for aprovado

    #Data requisicao, data emissao, qtd carteirinhas, funcionario

    respond_to do |format|
      if @requisicao.save

        #format.html { redirect_to @requisicao, notice: 'Requisicao was successfully created.' }
        #format.json { render :show, status: :created, location: @requisicao }
        if @requisicao.categoria == "Deficiente" || @requisicao.categoria == "Deficente temporário"
          format.html { redirect_to new_cid_path }
        else
          format.html {redirect_to new_carteirinha_path}
        end
      else
        format.html { render :new }
        format.json { render json: @requisicao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requisicoes/1
  # PATCH/PUT /requisicoes/1.json
  def update
    respond_to do |format|
      if @requisicao.update(requisicao_params)

        format.html { redirect_to returnCarEnd()}
        #format.html { redirect_to @requisicao, notice: 'Requisição criada com sucesso.' }
        format.json { render :show, status: :ok, location: @requisicao }
      else
        format.html { render :edit }
        format.json { render json: @requisicao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requisicoes/1
  # DELETE /requisicoes/1.json
  def destroy
    @requisicao.destroy
    respond_to do |format|
      format.html { redirect_to requisicoes_url, notice: 'Requisicao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_requisicao
      @requisicao = Requisicao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def requisicao_params
      params.require(:requisicao).permit(:data_requisicao, :data_emissao, :qtde_carteirinhas, :responsavel_nome, :responsavel_cpf, :pessoa_id, :categoria, :funcionario)
    end
end
