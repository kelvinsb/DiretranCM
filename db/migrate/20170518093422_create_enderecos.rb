class CreateEnderecos < ActiveRecord::Migration[5.0]
  def change
    create_table :enderecos do |t|
      t.string :cep
      t.string :cidade
      t.string :bairro
      t.string :logradouro
      t.integer :numero
      t.string :complemento
      t.references :pessoa, foreign_key: true

      t.timestamps
    end
  end
end
