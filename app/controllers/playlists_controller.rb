class PlaylistsController < ApplicationController
  def index
    @playlists = current_user.playlists
  end

  def fetch
    account = Yt::Account.new refresh_token: current_user.yt_refresh_token
    Playlist.transaction do
      account.playlists.each do |playlist|
        current_user.playlists.find_or_create_by(yt_id: playlist.id) do |pl|
          pl.title = playlist.title
          pl.description = playlist.description
          pl.thumbnail_url = playlist.thumbnail_url
        end
      end
    end
    redirect_to :playlists
  end
end
