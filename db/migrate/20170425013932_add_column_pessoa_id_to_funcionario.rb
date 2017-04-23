class AddColumnPessoaIdToFuncionario < ActiveRecord::Migration[5.0]
  def change
    add_column :funcionarios, :pessoa_id, :integer
  end
end
