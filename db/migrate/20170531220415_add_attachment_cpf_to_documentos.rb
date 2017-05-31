class AddAttachmentCpfToDocumentos < ActiveRecord::Migration
  def self.up
    change_table :documentos do |t|
      t.attachment :cpf
    end
  end

  def self.down
    remove_attachment :documentos, :cpf
  end
end
