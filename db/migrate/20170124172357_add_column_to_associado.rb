class AddColumnToAssociado < ActiveRecord::Migration[5.0]
  def change
    add_column :associados, :picture, :string
  end
end
