class InfCarteirinhasController < ApplicationController
  before_action :set_inf_carteirinha, only: [:show, :edit, :update, :destroy]

  # GET /inf_carteirinhas
  # GET /inf_carteirinhas.json
  def index
    @inf_carteirinhas = InfCarteirinha.all
  end

  # GET /inf_carteirinhas/1
  # GET /inf_carteirinhas/1.json
  def show
  end

  # GET /inf_carteirinhas/new
  def new
    @inf_carteirinha = InfCarteirinha.new
  end

  # GET /inf_carteirinhas/1/edit
  def edit
  end

  # POST /inf_carteirinhas
  # POST /inf_carteirinhas.json
  def create
    @inf_carteirinha = InfCarteirinha.new(inf_carteirinha_params)

    respond_to do |format|
      if @inf_carteirinha.save
        format.html { redirect_to @inf_carteirinha, notice: 'Inf carteirinha was successfully created.' }
        format.json { render :show, status: :created, location: @inf_carteirinha }
      else
        format.html { render :new }
        format.json { render json: @inf_carteirinha.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inf_carteirinhas/1
  # PATCH/PUT /inf_carteirinhas/1.json
  def update
    respond_to do |format|
      if @inf_carteirinha.update(inf_carteirinha_params)
        format.html { redirect_to @inf_carteirinha, notice: 'Inf carteirinha was successfully updated.' }
        format.json { render :show, status: :ok, location: @inf_carteirinha }
      else
        format.html { render :edit }
        format.json { render json: @inf_carteirinha.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inf_carteirinhas/1
  # DELETE /inf_carteirinhas/1.json
  def destroy
    @inf_carteirinha.destroy
    respond_to do |format|
      format.html { redirect_to inf_carteirinhas_url, notice: 'Inf carteirinha was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inf_carteirinha
      @inf_carteirinha = InfCarteirinha.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inf_carteirinha_params
      params.require(:inf_carteirinha).permit(:num_registro, :validade, :diretor, :nome_beneficiario, :rg, :regras, :tipo)
    end
end
