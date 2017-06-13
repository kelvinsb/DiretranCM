class RemoveCpf < ActiveRecord::Migration[5.0]
  def change
  	remove_column :pessoas, :cpf
  end
end
