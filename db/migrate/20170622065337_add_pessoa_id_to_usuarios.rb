class AddPessoaIdToUsuarios < ActiveRecord::Migration[5.0]
  def change
    add_reference :usuarios, :pessoas, foreign_key: true
    
  end
end
