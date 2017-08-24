class EnderecosController < ApplicationController
  before_action :set_endereco, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_usuario!, only: [:show, :new, :edit]
  before_action :authFuncOrAdmin, only: [:index, :destroy]
  #before_action :authFuncionario, only: [:index, :show]
  #before_action :authenticate_usuario!, only: [:show, :update, :index]


  # GET /enderecos
  # GET /enderecos.json
  def index
    @enderecos = Endereco.all
  end

  # GET /enderecos/1
  # GET /enderecos/1.json
  def show
  end

  # GET /enderecos/new
  def new
    @endereco = Endereco.new
  end

  # GET /enderecos/1/edit
  def edit
  end

  # POST /enderecos
  # POST /enderecos.json
  def create
    @endereco = Endereco.new(endereco_params)
    @endereco.pessoa_id = returnPes()


    #require 'correios-cep'
    #address = Correios::CEP::AddressFinder.get @endereco.cep
    #address {:address => "Rua Fernando Amorim",:neighborhood => "Cavaleiro",:city => "Jaboatão dos Guararapes",:state => "PE",:zipcode => "54250610",:complement => ""}

    #@endereco.bairro = address{:neighborhood}



    respond_to do |format|
      if @endereco.save
       format.html { redirect_to new_documento_path, notice: 'Endereço foi criada com sucesso' }
       # format.html { redirect_to @endereco, notice: 'Endereco criado com sucesso.' }
       # format.json { render :show, status: :created, location: @endereco }
      else
        format.html { render :new }
        format.json { render json: @endereco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enderecos/1
  # PATCH/PUT /enderecos/1.json
  def update
    respond_to do |format|
      if @endereco.update(endereco_params)
        format.html { redirect_to returnDocEnd(), notice: 'Endereço foi atualizado com sucesso' }
        #edit_documento_path
        # format.html { redirect_to @endereco, notice: 'Endereco editado com sucesso.' }
        # format.json { render :show, status: :ok, location: @endereco }
      else
        format.html { render :edit }
        format.json { render json: @endereco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enderecos/1
  # DELETE /enderecos/1.json
  def destroy
    @endereco = Endereco.find(params[:id])
    @endereco.destroy
    respond_to do |format|
      format.html { redirect_to enderecos_url, notice: 'Endereco apagado com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_endereco
      @endereco = Endereco.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def endereco_params
      params.require(:endereco).permit(:cep, :cidade, :bairro, :logradouro, :numero, :complemento, :pessoa_id)
    end
end
