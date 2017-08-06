class AddCpfToPessoa < ActiveRecord::Migration[5.0]
  def change
    add_column :pessoas, :cpf, :string
  end
end
