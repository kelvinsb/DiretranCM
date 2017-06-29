class CreateCids < ActiveRecord::Migration[5.0]
  def change
    create_table :cids do |t|
      t.string :codigo
      t.string :nome_doenca
      t.references :requisicao, foreign_key: true

      t.timestamps
    end
  end
end
