class RemoveStatusFromCarteirinhas < ActiveRecord::Migration[5.0]
  def change
    remove_column :carteirinhas, :status, :string
  end
end
