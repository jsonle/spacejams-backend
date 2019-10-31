class AddUsernameToUsers < ActiveRecord::Migration[6.0]
  def change
    change_table :users do |t|
      t.string :username
      t.string :display_name
      t.string :profile_image
    end
  end
end
