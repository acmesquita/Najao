class CreateAssociados < ActiveRecord::Migration[5.0]
  def change
    create_table :associados do |t|
      t.string :matricula
      t.string :nome
      t.string :cpf
      t.string :rg
      t.date :nascimento
      t.string :celular
      t.string :email
      t.string :logradouro
      t.string :numero
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.boolean :informativo
      t.string :status

      t.timestamps
    end
  end
end
