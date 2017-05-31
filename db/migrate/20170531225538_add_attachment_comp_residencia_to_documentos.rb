class AddAttachmentCompResidenciaToDocumentos < ActiveRecord::Migration
  def self.up
    change_table :documentos do |t|
      t.attachment :comp_residencia
    end
  end

  def self.down
    remove_attachment :documentos, :comp_residencia
  end
end
