class CreateDatalogs < ActiveRecord::Migration[5.0]
  def change
    create_table :datalogs do |t|
      t.string :valor_anterior
      t.string :valor_atual
      t.string :campo_alterado

      t.timestamps
    end
  end
end
