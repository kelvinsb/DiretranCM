class AddAttachmentCidToDocumentos < ActiveRecord::Migration
  def self.up
    change_table :documentos do |t|
      t.attachment :cid
    end
  end

  def self.down
    remove_attachment :documentos, :cid
  end
end
