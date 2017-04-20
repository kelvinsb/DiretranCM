class CreateEstados < ActiveRecord::Migration[5.0]
  def change
    create_table :estados do |t|
      t.string :nome
      t.string :uf

      t.timestamps
    end
  end
end
