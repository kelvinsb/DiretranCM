class AddColumnFuncionarioIdToRequisicao < ActiveRecord::Migration[5.0]
  def change
    add_column :requisicaos, :funcionario_id, :integer
  end
end
