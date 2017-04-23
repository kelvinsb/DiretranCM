class AddColumnCidIdToCarteirinha < ActiveRecord::Migration[5.0]
  def change
    add_column :carteirinhas, :cid_id, :integer
  end
end
