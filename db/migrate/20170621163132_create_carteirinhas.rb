class CreateCarteirinhas < ActiveRecord::Migration[5.0]
  def change
    create_table :carteirinhas do |t|
      t.string :via
      t.string :status
      t.string :categoria
      t.date :data_vencimento
      t.references :requisicao, foreign_key: true

      t.timestamps
    end
  end
end
