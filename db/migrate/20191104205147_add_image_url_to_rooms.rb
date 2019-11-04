class AddImageUrlToRooms < ActiveRecord::Migration[6.0]
  def change
    add_column :rooms, :playlist_image_url, :string
  end
end
