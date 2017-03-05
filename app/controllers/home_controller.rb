class HomeController < ApplicationController
  def index
  	@users = User.all
  end

  def destroy
  	User.destroy(params[:id].to_i)
  	respond_to do |format|
      format.html { redirect_to configuracao_path, notice: 'Usuário deletado com sucesso.' }
      format.json { head :no_content }
    end
  end
end
