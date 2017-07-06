class CreateInfCarteirinhas < ActiveRecord::Migration[5.0]
  def change
    create_table :inf_carteirinhas do |t|
      t.string :num_registro
      t.date :validade
      t.string :diretor
      t.string :nome_beneficiario
      t.string :rg
      t.string :regras
      t.string :tipo

      t.timestamps
    end
  end
end
