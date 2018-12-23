class PlaylistsController < ApplicationController
  def index
    if request.format.js?
      account = Yt::Account.new refresh_token: current_user.yt_refresh_token
      @playlists = account.playlists
    end
  end
end
