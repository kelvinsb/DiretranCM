class CreateLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :logs do |t|
      t.string :motivo
      t.date :data
      t.time :hora

      t.timestamps
    end
  end
end
