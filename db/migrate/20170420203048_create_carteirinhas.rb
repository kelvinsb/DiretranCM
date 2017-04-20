class CreateCarteirinhas < ActiveRecord::Migration[5.0]
  def change
    create_table :carteirinhas do |t|
      t.integer :via
      t.string :status
      t.date :data_criacao
      t.date :data_vencimento

      t.timestamps
    end
  end
end
