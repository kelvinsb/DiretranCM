class AddNumeracaoCarteirinhaToInfoCarteirinha < ActiveRecord::Migration[5.0]
  def change
    add_column :info_carteirinhas, :numeracao_carteirinha, :integer
  end
end
