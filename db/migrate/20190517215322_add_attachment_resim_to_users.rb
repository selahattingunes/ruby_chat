class AddAttachmentResimToUsers < ActiveRecord::Migration[5.2]
  def self.up
    change_table :users do |t|
      t.attachment :resim
    end
  end

  def self.down
    remove_attachment :users, :resim
  end
end
