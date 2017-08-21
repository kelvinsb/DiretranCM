class InfoCarteirinhasController < ApplicationController
  before_action :set_info_carteirinha, only: [:show, :edit, :update, :destroy]
  before_action :authAdmin, only: [:index, :show, :edit, :update, :destroy]

  # GET /info_carteirinhas
  # GET /info_carteirinhas.json
  def index
    @info_carteirinhas = InfoCarteirinha.all
  end

  # GET /info_carteirinhas/1
  # GET /info_carteirinhas/1.json
  def show
  end

  # GET /info_carteirinhas/new
  def new
    @info_carteirinha = InfoCarteirinha.new
  end

  # GET /info_carteirinhas/1/edit
  def edit
  end

  # POST /info_carteirinhas
  # POST /info_carteirinhas.json
  def create
    @info_carteirinha = InfoCarteirinha.new(info_carteirinha_params)

    respond_to do |format|
      if @info_carteirinha.save
        format.html { redirect_to @info_carteirinha, notice: 'Info carteirinha was successfully created.' }
        format.json { render :show, status: :created, location: @info_carteirinha }
      else
        format.html { render :new }
        format.json { render json: @info_carteirinha.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /info_carteirinhas/1
  # PATCH/PUT /info_carteirinhas/1.json
  def update
    respond_to do |format|
      if @info_carteirinha.update(info_carteirinha_params)
        format.html { redirect_to @info_carteirinha, notice: 'Info carteirinha was successfully updated.' }
        format.json { render :show, status: :ok, location: @info_carteirinha }
      else
        format.html { render :edit }
        format.json { render json: @info_carteirinha.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /info_carteirinhas/1
  # DELETE /info_carteirinhas/1.json
  def destroy
    @info_carteirinha.destroy
    respond_to do |format|
      format.html { redirect_to info_carteirinhas_url, notice: 'Info carteirinha was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_info_carteirinha
      @info_carteirinha = InfoCarteirinha.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def info_carteirinha_params
      params.require(:info_carteirinha).permit(:nome_tipo_estacionamento, :resolucao, :uf, :municipio, :orgao_expedidor, :nome_diretor, :orgao_exp_diretor, :regras_utilizacao)
    end
end
