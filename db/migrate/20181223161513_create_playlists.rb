class CreatePlaylists < ActiveRecord::Migration[5.2]
  def change
    create_table :playlists do |t|
      t.string :yt_id
      t.string :title
      t.string :description
      t.string :thumbnail_url
      t.references :user, foreign_key: true
      t.timestamps null: false
    end
  end
end
