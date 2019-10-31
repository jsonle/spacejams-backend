class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :playlist_name
      t.string :playlist_id

      t.timestamps
    end
  end
end
