class AddEstadoToPessoas < ActiveRecord::Migration[5.0]
  def change
    add_column :pessoas, :rg_estado, :string
  end
end
