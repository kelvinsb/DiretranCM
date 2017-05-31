class AddAttachmentFotoToDocumentos < ActiveRecord::Migration
  def self.up
    change_table :documentos do |t|
      t.attachment :foto
    end
  end

  def self.down
    remove_attachment :documentos, :foto
  end
end
