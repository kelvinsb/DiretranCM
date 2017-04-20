class CreateDocumentos < ActiveRecord::Migration[5.0]
  def change
    create_table :documentos do |t|
      t.string :rg
      t.string :cpf
      t.string :cid
      t.string :foto
      t.string :comp_residencia

      t.timestamps
    end
  end
end
