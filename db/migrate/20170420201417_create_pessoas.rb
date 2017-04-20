class CreatePessoas < ActiveRecord::Migration[5.0]
  def change
    create_table :pessoas do |t|
      t.string :cpf
      t.string :nome
      t.string :rg
      t.integer :login_id

      t.timestamps
    end
  end
end
