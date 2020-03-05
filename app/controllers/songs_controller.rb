class SongsController < ApplicationController
  before_action :set_artist
  before_action :set_song, only [:show, :edit, :update :destroy]

  def index
    @songs = Song.all
  end

  def new
    @songs = Song.new
  end

  def create
    @song = Songs.new(song_params)
    if @song.save
      redirect_to [@artist, @song]
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @song = Song.update(song_params)
    if @song.update
      redirect_to [@artist, @song]
    else
      render :edit
  end



  private

  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

  def song_params
    params.require(:song).permit(:name, :length)
  end

  def set_song
    @songs = Songs.find(params[:artist_id])
  end

end
