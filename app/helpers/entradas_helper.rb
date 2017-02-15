module EntradasHelper

	def valor_total(list)
		valor = 0
		if list
			list.each do |e|
				valor += e.valor; 
			end
		end
		format_valor(valor)
	end

	def data_inicio(data)
		formatada = '01/data'
		Time.parse(formatada)
	end

	def data_final(data)
		formatada = '30/data'
		Time.parse(formatada)
		#data.end_of_month.strftime('%Y-%m-%d')
	end

	def month_year(data)
		data.strftime('%Y-%m')
	end

	def monta_data(month, year)
		data.strftime('year-month-01')		
	end

	def valor_caixa
		format_valor((Entrada.sum &:valor_caixa) - (Saida.sum &:valor_caixa))
	end
end
