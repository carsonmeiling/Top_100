class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def show
    @artists = Artist.find(params[:id])
  end

  def edit
  end
end
