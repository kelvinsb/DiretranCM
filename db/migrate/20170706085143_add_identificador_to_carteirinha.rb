class AddIdentificadorToCarteirinha < ActiveRecord::Migration[5.0]
  def change
    add_column :carteirinhas, :identificador, :integer
  end
end
