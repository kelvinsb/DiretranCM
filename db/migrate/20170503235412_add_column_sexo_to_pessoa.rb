class AddColumnSexoToPessoa < ActiveRecord::Migration[5.0]
  def change
    add_column :pessoas, :sexo, :string
  end
end
