class CreateLogradouros < ActiveRecord::Migration[5.0]
  def change
    create_table :logradouros do |t|
      t.string :nome

      t.timestamps
    end
  end
end
