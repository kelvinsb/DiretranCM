class AddColumnLogradouroIdToEndereco < ActiveRecord::Migration[5.0]
  def change
    add_column :enderecos, :logradouro_id, :integer
  end
end
