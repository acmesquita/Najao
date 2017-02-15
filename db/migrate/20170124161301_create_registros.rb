class CreateRegistros < ActiveRecord::Migration[5.0]
  def change
    create_table :registros do |t|
      t.date :dataPrimeiroPagamento
      t.float :valorPrimeiroPagamento
      t.date :dataSegundoPagamento
      t.float :valorSegundoPagamento

      t.timestamps
    end
  end
end
