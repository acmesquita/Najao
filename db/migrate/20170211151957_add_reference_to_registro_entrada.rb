class AddReferenceToRegistroEntrada < ActiveRecord::Migration[5.0]
  def change
  	add_reference :registros, :entrada, foreign_key: true
  end
end
