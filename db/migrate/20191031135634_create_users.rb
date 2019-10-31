class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :access_token
      t.string :refresh_token
      t.integer :room_id

      t.timestamps
    end
  end
end
