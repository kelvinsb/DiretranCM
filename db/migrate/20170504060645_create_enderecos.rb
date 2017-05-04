class CreateEnderecos < ActiveRecord::Migration[5.0]
  def change
    create_table :enderecos do |t|
      t.string :estado
      t.string :cidade
      t.string :bairro
      t.string :cep
      t.string :logradouro
      t.string :numero
      t.string :complemento

      t.timestamps
    end
  end
end
