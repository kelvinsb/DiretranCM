class CreateCadastros < ActiveRecord::Migration[5.0]
  def change
    create_table :cadastros do |t|
      t.string :nome
      t.string :rg
      t.string :cpf
      t.date :data_nascimento
      t.string :rua
      t.integer :numero
      t.string :complemento
      t.string :bairro
      t.string :cidade
      t.string :telefone
      t.string :celular
      t.references :usuario, foreign_key: true

      t.timestamps
    end
  end
end
