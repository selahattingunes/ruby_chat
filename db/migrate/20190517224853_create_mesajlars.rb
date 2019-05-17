class CreateMesajlars < ActiveRecord::Migration[5.2]
  def change
    create_table :mesajlars do |t|
      t.text :mesaj

      t.timestamps
    end
  end
end
