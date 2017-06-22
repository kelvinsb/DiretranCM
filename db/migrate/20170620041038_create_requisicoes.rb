class CreateRequisicoes < ActiveRecord::Migration[5.0]
  def change
    create_table :requisicoes do |t|
      t.date :data_requisicao
      t.date :data_emissao
      t.integer :qtde_carteirinhas
      t.string :responsavel_nome
      t.string :responsavel_cpf
      t.references :pessoa, foreign_key: true

      t.timestamps
    end
  end
end
