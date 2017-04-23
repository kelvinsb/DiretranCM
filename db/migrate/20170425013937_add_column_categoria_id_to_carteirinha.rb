class AddColumnCategoriaIdToCarteirinha < ActiveRecord::Migration[5.0]
  def change
    add_column :carteirinhas, :categoria_id, :integer
  end
end
