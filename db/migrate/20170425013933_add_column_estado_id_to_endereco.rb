class AddColumnEstadoIdToEndereco < ActiveRecord::Migration[5.0]
  def change
    add_column :enderecos, :estado_id, :integer
  end
end
