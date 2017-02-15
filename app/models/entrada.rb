class Entrada < ApplicationRecord 

	validates :data, :valor, :descricao,  presence: true

	def valor_caixa
		valor || 0
	end

	def self.data_inicio(data)
		formatada = '01/'+data
		puts formatada
		Time.parse(formatada).strftime('%Y-%m-%d')
	end

	def self.data_final(data)
		formatada = '01/'+data
		Time.parse(formatada).end_of_month.strftime('%Y-%m-%d')
	end
end
