class PlaylistsController < ApplicationController
  before_action :set_playlists, only: %i[index show]

  def index
  end

  def show
    @playlist = @playlists.find(params[:id])
  end

  private

  def set_playlists
    @playlists = Playlist.all
  end
end
