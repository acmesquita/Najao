class Associado < ActiveRecord::Base 
	extend Enumerize
	mount_uploader :picture, PictureUploader

	validates :matricula, :nome, :nascimento, :cpf, :email,  presence: true

	enumerize :status, in: [:graduando, :egresso, :docente, :pos_graduando]
	enumerize :sexo, in: [:masculino, :feminino]

	def to_s
		nome
	end

end
