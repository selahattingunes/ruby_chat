class CreateUserphotos < ActiveRecord::Migration[5.2]
  def change
    create_table :userphotos do |t|
      t.string :alt

      t.timestamps
    end
  end
end
