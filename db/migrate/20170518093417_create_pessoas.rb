class CreatePessoas < ActiveRecord::Migration[5.0]
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.string :sexo
      t.string :rg
      t.string :cpf
      t.date :data_nascimento
      t.string :telefone
      t.string :celular
      t.references :usuario, foreign_key: true

      t.timestamps
    end
  end
end
