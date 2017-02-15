class CreateSaidas < ActiveRecord::Migration[5.0]
  def change
    create_table :saidas do |t|
      t.date :data
      t.float :valor
      t.string :descricao

      t.timestamps
    end
  end
end
