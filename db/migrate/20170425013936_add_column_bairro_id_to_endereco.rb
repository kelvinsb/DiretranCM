class AddColumnBairroIdToEndereco < ActiveRecord::Migration[5.0]
  def change
    add_column :enderecos, :bairro_id, :integer
  end
end
