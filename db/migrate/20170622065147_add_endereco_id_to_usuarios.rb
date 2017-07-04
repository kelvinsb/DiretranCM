class AddEnderecoIdToUsuarios < ActiveRecord::Migration[5.0]
  def change
    add_reference :usuarios, :enderecos, foreign_key: true
  end
end
