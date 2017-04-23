class AddColumnDocumentosIdToRequisicao < ActiveRecord::Migration[5.0]
  def change
    add_column :requisicaos, :documentos_id, :integer
  end
end
