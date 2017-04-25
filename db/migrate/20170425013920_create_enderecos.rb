class CreateEnderecos < ActiveRecord::Migration[5.0]
  def change
    create_table :enderecos do |t|
      t.integer :numero
      t.string :cep
      t.string :complemento

      t.timestamps
    end
  end
end
