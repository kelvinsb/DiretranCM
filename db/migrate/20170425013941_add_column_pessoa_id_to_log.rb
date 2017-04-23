class AddColumnPessoaIdToLog < ActiveRecord::Migration[5.0]
  def change
    add_column :logs, :pessoa_id, :integer
  end
end
