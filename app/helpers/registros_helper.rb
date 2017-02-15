module RegistrosHelper

	def format_valor(valor)
		number_to_currency(valor, :format => "%u %n", :separator => ",", :delimiter => ".", :unit => "R$") || number_to_currency(0, :format => "%u %n", :separator => ",", :delimiter => ".", :unit => "R$")
	end

	def format_date(date)
		date.strftime("%d/%m/%Y") unless date.nil?
	end

	def format_descricao(descricao)
		descricao.truncate(25, omission: '...')
	end
end
