class AddColumnLogIdToDatalog < ActiveRecord::Migration[5.0]
  def change
    add_column :datalogs, :log_id, :integer
  end
end
