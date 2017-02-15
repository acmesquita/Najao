class AddReferencesToRegistro < ActiveRecord::Migration[5.0]
  def change
    add_reference :registros, :associado, foreign_key: true
  end
end
