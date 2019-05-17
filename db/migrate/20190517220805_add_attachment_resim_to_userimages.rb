class AddAttachmentResimToUserimages < ActiveRecord::Migration[5.2]
  def self.up
    change_table :userimages do |t|
      t.attachment :resim
    end
  end

  def self.down
    remove_attachment :userimages, :resim
  end
end
