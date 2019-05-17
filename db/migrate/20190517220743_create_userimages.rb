class CreateUserimages < ActiveRecord::Migration[5.2]
  def change
    create_table :userimages do |t|
      t.string :alt

      t.timestamps
    end
  end
end
