class AddAttachmentResimToUserphotos < ActiveRecord::Migration[5.2]
  def self.up
    change_table :userphotos do |t|
      t.attachment :resim
    end
  end

  def self.down
    remove_attachment :userphotos, :resim
  end
end
