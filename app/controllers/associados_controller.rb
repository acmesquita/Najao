class AssociadosController < ApplicationController
  before_action :set_associado, only: [:show, :edit, :update, :destroy]

  # GET /associados
  # GET /associados.json
  def index
    if params[:q]
      @associados = Associado.where("nome like '%' || ? || '%'", params[:q])
    else
      @associados = Associado.all
    end
  end

  # GET /associados/1
  # GET /associados/1.json
  def show
  end

  # GET /associados/new
  def new
    @associado = Associado.new
  end

  # GET /associados/1/edit
  def edit
  end

  # POST /associados
  # POST /associados.json
  def create
    @associado = Associado.new(associado_params)
    if params[:picture].present?
      preloaded = Cloudinary::PreloadedFile.new(params[:picture])         
      raise "Invalid upload signature" if !preloaded.valid?
      @associado.picture = preloaded.identifier
    end
    @associado.picture = params[:picture].to_s
    puts @associado.picture_url
    puts  params[:picture].to_s
    respond_to do |format|
      if @associado.save
        format.html { redirect_to @associado, notice: 'Participante cadastrado com sucesso.' }
        format.json { render :show, status: :created, location: @associado }
      else
        format.html { render :new }
        format.json { render json: @associado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /associados/1
  # PATCH/PUT /associados/1.json
  def update
    respond_to do |format|
      if params[:picture].present?
        preloaded = Cloudinary::PreloadedFile.new(params[:picture])         
        raise "Invalid upload signature" if !preloaded.valid?
        @associado.picture = preloaded.identifier
      end
      @associado.picture = params[:picture]
    puts @associado.picture_url
    puts params[:picture].to_s

      if @associado.save && @associado.update(associado_params)
        #Cloudinary::Uploader.upload(@associado.picture_url)
        format.html { redirect_to @associado, notice: 'Participante atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @associado }
      else
        format.html { render :edit }
        format.json { render json: @associado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /associados/1
  # DELETE /associados/1.json
  def destroy
    @associado.destroy
    respond_to do |format|
      format.html { redirect_to associados_url, notice: 'Participante deletado com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_associado
      @associado = Associado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def associado_params
      params.require(:associado).permit(:matricula, :nome, :cpf, :rg, :nascimento,:sexo, :celular, :email, :logradouro, :numero, :bairro, :cidade, :estado, :informativo, :status)
    end
end
