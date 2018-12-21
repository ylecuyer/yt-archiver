class AddYoutubeTokensToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :yt_token, :string
    add_column :users, :yt_refresh_token, :string
    add_column :users, :yt_expires_at, :timestamp
  end
end
