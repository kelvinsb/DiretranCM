class CreateDatalogs < ActiveRecord::Migration[5.0]
  def change
    create_table :datalogs do |t|
      t.integer :valor_anterior
      t.integer :valor_atual
      t.integer :campo_alterado

      t.timestamps
    end
  end
end
