class CreateCarteiraPdfs < ActiveRecord::Migration[5.0]
  def change
    create_table :carteira_pdfs do |t|

      t.timestamps
    end
  end
end
