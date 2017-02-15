class Saida < ApplicationRecord

	validates :data, :valor, :descricao,  presence: true

	def valor_caixa
		valor || 0		
	end
end
