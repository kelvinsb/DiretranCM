class CarteirinhasController < ApplicationController
  before_action :set_carteirinha, only: [:show, :edit, :update, :destroy]

  # GET /carteirinhas
  # GET /carteirinhas.json
  def index
    @carteirinhas = Carteirinha.all
  end

  # GET /carteirinhas/1
  # GET /carteirinhas/1.json
  def show
  end

  # GET /carteirinhas/new
  def new
    @carteirinha = Carteirinha.new
  end

  # GET /carteirinhas/1/edit
  def edit
  end

  # POST /carteirinhas
  # POST /carteirinhas.json
  def create
    @carteirinha = Carteirinha.new(carteirinha_params)

    respond_to do |format|
      if @carteirinha.save
        format.html { redirect_to @carteirinha, notice: 'Carteirinha was successfully created.' }
        format.json { render :show, status: :created, location: @carteirinha }
      else
        format.html { render :new }
        format.json { render json: @carteirinha.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carteirinhas/1
  # PATCH/PUT /carteirinhas/1.json
  def update
    respond_to do |format|
      if @carteirinha.update(carteirinha_params)
        format.html { redirect_to @carteirinha, notice: 'Carteirinha was successfully updated.' }
        format.json { render :show, status: :ok, location: @carteirinha }
      else
        format.html { render :edit }
        format.json { render json: @carteirinha.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carteirinhas/1
  # DELETE /carteirinhas/1.json
  def destroy
    @carteirinha.destroy
    respond_to do |format|
      format.html { redirect_to carteirinhas_url, notice: 'Carteirinha was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carteirinha
      @carteirinha = Carteirinha.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carteirinha_params
      params.require(:carteirinha).permit(:via, :status, :data_criacao, :data_vencimento)
    end
end
