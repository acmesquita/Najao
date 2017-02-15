class MigrationAddColumnToAssociado < ActiveRecord::Migration[5.0]
  def change
  	add_column :associados, :sexo, :string
  end
end
