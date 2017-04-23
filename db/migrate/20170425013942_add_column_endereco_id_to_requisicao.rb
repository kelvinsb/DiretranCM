class AddColumnEnderecoIdToRequisicao < ActiveRecord::Migration[5.0]
  def change
    add_column :requisicaos, :endereco_id, :integer
  end
end
