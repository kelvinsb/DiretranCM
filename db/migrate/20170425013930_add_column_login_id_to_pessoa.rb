class AddColumnLoginIdToPessoa < ActiveRecord::Migration[5.0]
  def change
    add_column :pessoas, :login_id, :integer
  end
end
