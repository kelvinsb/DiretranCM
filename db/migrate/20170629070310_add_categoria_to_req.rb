class AddCategoriaToReq < ActiveRecord::Migration[5.0]
  def change
  	add_column :requisicoes, :categoria, :string 
  	add_column :requisicoes, :funcionario, :string  	 
  end
end
