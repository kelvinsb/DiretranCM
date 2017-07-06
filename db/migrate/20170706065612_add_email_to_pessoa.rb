class AddEmailToPessoa < ActiveRecord::Migration[5.0]
  def change
    add_column :pessoas, :email, :string 
  end
end
