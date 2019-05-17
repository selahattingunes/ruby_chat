class AddUserToUserphoto < ActiveRecord::Migration[5.2]
  def change
    add_reference :userphotos, :user, foreign_key: true
  end
end
