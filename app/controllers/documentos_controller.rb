class DocumentosController < ApplicationController
  before_action :set_documento, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_usuario!, only: [:show, :new, :edit]
  before_action :authAdmin, only: [:index, :destroy]

  # GET /documentos
  # GET /documentos.json
  def index
    @documentos = Documento.all
  end

  # GET /documentos/1
  # GET /documentos/1.json
  def show
  end

  # GET /documentos/new
  def new
    @documento = Documento.new
  end

  # GET /documentos/1/edit
  def edit
  end

  # POST /documentos
  # POST /documentos.json
  def create
    @documento = Documento.new(documento_params)
    @documento.pessoa_id = returnPes()

    #@documento.pessoa_id = Pessoa.find_by_usuario_id(current_usuario.id).id

    respond_to do |format|
      if @documento.save
        #format.html { redirect_to @documento, notice: 'Documento was successfully created.' }
        #format.json { render :show, status: :created, location: @documento }
        format.html { redirect_to new_requisicao_path, notice: "Documento foi criado com sucesso" }
        #new_requisicao_path
      else
        format.html { render :new }
        format.json { render json: @documento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /documentos/1
  # PATCH/PUT /documentos/1.json
  def update
    respond_to do |format|
      if @documento.update(documento_params)
        #format.html { redirect_to @documento, notice: 'Documento was successfully updated.' }
        #format.json { render :show, status: :ok, location: @documento }
        format.html { redirect_to edit_requisicao_path , notice: 'Documento foi atualizado com sucesso'}
      else
        format.html { render :edit }
        format.json { render json: @documento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /documentos/1
  # DELETE /documentos/1.json
  def destroy
    @documento.destroy
    respond_to do |format|
      format.html { redirect_to documentos_url, notice: 'Documento foi destruido com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_documento
      @documento = Documento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def documento_params
      params.require(:documento).permit(:cpf, :rg, :foto, :cid, :comp_residencia, :pessoa_id)
      #fetch or require
    end
end
