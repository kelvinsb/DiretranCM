class AddRequisicaoLogIdToLog < ActiveRecord::Migration[5.0]
  def change
    add_column :logs, :requisicao_id, :integer
  end
end
