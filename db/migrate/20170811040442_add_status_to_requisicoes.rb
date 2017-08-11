class AddStatusToRequisicoes < ActiveRecord::Migration[5.0]
  def change
    add_column :requisicoes, :status, :string
  end
end
