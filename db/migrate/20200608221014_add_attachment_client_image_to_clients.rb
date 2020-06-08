class AddAttachmentClientImageToClients < ActiveRecord::Migration[5.2]
  def self.up
    change_table :clients do |t|
      t.attachment :client_image
    end
  end

  def self.down
    remove_attachment :clients, :client_image
  end
end
