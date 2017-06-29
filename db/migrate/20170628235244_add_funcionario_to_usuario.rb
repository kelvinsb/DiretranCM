class AddFuncionarioToUsuario < ActiveRecord::Migration[5.0]
  def change
    add_column :usuarios, :funcionario, :boolean, default: false

  end
end
