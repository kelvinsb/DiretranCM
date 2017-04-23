class AddColumnCarteirinhaIdToRequisicao < ActiveRecord::Migration[5.0]
  def change
    add_column :requisicaos, :carteirinha_id, :integer
  end
end
