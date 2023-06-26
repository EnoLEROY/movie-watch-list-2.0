class PlaylistsController < ApplicationController
  before_action :set_playlists, only: %i[index show]

  def index
  end

  def show
    @playlist = @playlists.find(params[:id])
  end

  def new
    @playlist = Playlist.new
  end

  def create
    @playlist = Playlist.new(params_playlist)
    if @playlist.save
      redirect_to playlist_path(@playlist)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @playlist = Playlist.find(params[:id])
  end

  def update
    @playlist = Playlist.find(params[:id])
    if @playlist.update(params_playlist)
      redirect_to playlist_path(@playlist)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_playlists
    @playlists = Playlist.all
  end

  def params_playlist
    params.require(:playlist).permit(:name)
  end
end
