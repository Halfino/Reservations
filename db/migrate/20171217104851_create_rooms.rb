class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.string :tite
      t.string :code

      t.timestamps
    end

      add_reference :rooms, :building, foreign_key: true
  end
end
