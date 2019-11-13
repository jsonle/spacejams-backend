class AddPlaylistDescriptionToRooms < ActiveRecord::Migration[6.0]
  def change
    add_column :rooms, :playlist_description, :string
  end
end
