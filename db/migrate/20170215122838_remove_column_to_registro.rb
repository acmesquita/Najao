class RemoveColumnToRegistro < ActiveRecord::Migration[5.0]
  def change
  	remove_column :registros, :entrada
  end
end
