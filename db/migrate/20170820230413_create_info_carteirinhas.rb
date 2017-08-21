class CreateInfoCarteirinhas < ActiveRecord::Migration[5.0]
  def change
    create_table :info_carteirinhas do |t|
      t.string :nome_tipo_estacionamento
      t.string :resolucao
      t.string :uf
      t.string :municipio
      t.string :orgao_expedidor
      t.string :nome_diretor
      t.string :orgao_exp_diretor
      t.string :regras_utilizacao

      t.timestamps
    end
  end
end
