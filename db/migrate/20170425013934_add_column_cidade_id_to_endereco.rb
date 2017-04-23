class AddColumnCidadeIdToEndereco < ActiveRecord::Migration[5.0]
  def change
    add_column :enderecos, :cidade_id, :integer
  end
end
