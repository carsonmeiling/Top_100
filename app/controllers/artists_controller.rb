class ArtistsController < ApplicationController
  def index
    @artists = @billboard.artists
  end

  def new
    @artist = @billboard.artists.new
  end

  def create
    @artist = @billboard.artists.new(artist_params)
    if @artist.save
      redirect_to [@billboard, @artist]
    else
      render :new
    end
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    if @artist.update(artist_params)
      redirect_to [@billboard, @artist]
    else
      render :edit
    end
  end

  def destroy
    Artist.find(params[:id]).destory
    redirect_to billboard_artists_path(@billboard)
  end

  private

    def artist_params
      params.require(:artist).permit(:name, :genre )
    end
end
