class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @songs = Song.new
  end

  def show
    @songs = Songs.find(params[:id])
  end

  def edit
  end
end
