class EmailToCpf < ActiveRecord::Migration[5.0]
  def change
  	 rename_column :usuarios, :email, :cpf
  	 #add_column :usuarios, :email, :cpf
  end
end
