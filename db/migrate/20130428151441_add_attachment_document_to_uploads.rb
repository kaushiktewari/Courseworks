class AddAttachmentDocumentToUploads < ActiveRecord::Migration
  def self.up
    add_attachment :uploads, :document
  end

  def self.down
    remove_attachment :uploads, :document
  end
end

