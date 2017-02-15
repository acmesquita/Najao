class RegistrosController < ApplicationController
  before_action :set_registro, only: [:show, :edit, :update, :destroy]

  # GET /registros
  # GET /registros.json
  def index
    if params[:q]
      @registros = Registro.joins(:associado).where("associados.nome like '%' || ? || '%'", params[:q]).paginate(:page => params[:page], :per_page => 5)
    else
      @registros = Registro.joins(:associado).order('associados.nome').paginate(:page => params[:page], :per_page => 5)
    end
  end

  # GET /registros/1
  # GET /registros/1.json
  def show
  end

  # GET /registros/new
  def new
    @registro = Registro.new
  end

  # GET /registros/1/edit
  def edit
  end

  # POST /registros
  # POST /registros.json
  def create
    @registro = Registro.new(registro_params)
    # @entrada = Entrada.new(data:Time.new, valor:@registro.valorTotal, 
    #   descricao:"Associação de "+@registro.associado.nome)
    # @registro.entrada = @entrada

    respond_to do |format|

      if @registro.save
        format.html { redirect_to @registro, notice: 'Registro criado com sucesso.' }
        format.json { render :show, status: :created, location: @registro }
      else
        format.html { render :new }
        format.json { render json: @registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registros/1
  # PATCH/PUT /registros/1.json
  def update
    respond_to do |format|
      # entrada_id = @registro.entrada_id
      # @entrada = Entrada.find_by(id: entrada_id)
      # @entrada.valor = @registro.valorTotal
      if @registro.update(registro_params)
        format.html { redirect_to @registro, notice: 'Registro atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @registro }
      else
        format.html { render :edit }
        format.json { render json: @registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registros/1
  # DELETE /registros/1.json
  def destroy
    @registro.destroy
    respond_to do |format|
      format.html { redirect_to registros_url, notice: 'Registro deletado com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registro
      @registro = Registro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registro_params
      params.require(:registro).permit(:associado_id, :dataPrimeiroPagamento, :valorPrimeiroPagamento, :dataSegundoPagamento, :valorSegundoPagamento)
    end
end
