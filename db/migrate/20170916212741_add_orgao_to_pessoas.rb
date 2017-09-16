class AddOrgaoToPessoas < ActiveRecord::Migration[5.0]
  def change
    add_column :pessoas, :rg_orgao, :string
  end
end
