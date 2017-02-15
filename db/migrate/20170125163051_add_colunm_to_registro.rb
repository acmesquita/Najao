class AddColunmToRegistro < ActiveRecord::Migration[5.0]
  def change
    add_column :registros, :formaPrimeiroPagamento, :string
    add_column :registros, :formaSegundoPagamento, :string
  end
end
