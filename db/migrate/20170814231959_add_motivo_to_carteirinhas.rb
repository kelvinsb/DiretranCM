class AddMotivoToCarteirinhas < ActiveRecord::Migration[5.0]
  def change
    add_column :carteirinhas, :motivo, :string
  end
end
