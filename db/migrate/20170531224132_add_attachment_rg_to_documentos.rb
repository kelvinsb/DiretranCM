class AddAttachmentRgToDocumentos < ActiveRecord::Migration
  def self.up
    change_table :documentos do |t|
      t.attachment :rg
    end
  end

  def self.down
    remove_attachment :documentos, :rg
  end
end
