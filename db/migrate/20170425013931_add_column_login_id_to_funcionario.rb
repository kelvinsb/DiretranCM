class AddColumnLoginIdToFuncionario < ActiveRecord::Migration[5.0]
  def change
    add_column :funcionarios, :login_id, :integer
  end
end
