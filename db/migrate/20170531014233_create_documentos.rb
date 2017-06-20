class CreateDocumentos < ActiveRecord::Migration[5.0]
  def change
    create_table :documentos do |t|
      t.references :pessoa, foreign_key: true

      t.timestamps
    end
  end
end
