class CreateRequisicaos < ActiveRecord::Migration[5.0]
  def change
    create_table :requisicaos do |t|
      t.string :responsavel_nome
      t.string :responsavel_cpf
      t.date :data_requisicao
      t.date :data_emissao

      t.timestamps
    end
  end
end
