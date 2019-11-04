class AddUsernameToUsers < ActiveRecord::Migration[6.0]
  def change
    change_table :users do |t|
      t.string :display_name
      t.string :profile_image
      t.string :spotify_id
    end
  end
end
