class CreateCids < ActiveRecord::Migration[5.0]
  def change
    create_table :cids do |t|
      t.string :cod_doenca
      t.string :nome_doenca

      t.timestamps
    end
  end
end
