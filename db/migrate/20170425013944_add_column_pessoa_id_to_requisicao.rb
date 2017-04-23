class AddColumnPessoaIdToRequisicao < ActiveRecord::Migration[5.0]
  def change
    add_column :requisicaos, :pessoa_id, :integer
  end
end
