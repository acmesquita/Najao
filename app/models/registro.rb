class Registro < ApplicationRecord
	extend Enumerize

	belongs_to :associado

	validates :dataPrimeiroPagamento, :valorPrimeiroPagamento, presence: true
	# validates :valorPrimeiroPagamento, numericality: { greater_than: 10 }

	enumerize :formaPagamento, in:[:Espécie, :depositoBB, :depositoCEF], i18n_scope: "formaPagamento"

	def valorTotal
		# (valorPrimeiroPagamento.nil? ? 0.0 : valorPrimeiroPagamento) + (valorSegundoPagamento.nil? ? 0.0 : valorSegundoPagamento)
		(valorPrimeiroPagamento || 0) + (valorSegundoPagamento || 0)
	end

end
