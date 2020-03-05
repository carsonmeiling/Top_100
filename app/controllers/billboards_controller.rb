class BillboardsController < ApplicationController
  def index
    @billboards = Billboard.all
  end

  def show
    @billboard = Billboard.find(params[:id])
  end

  def edit
    @billboard = Billboard.find(params[:id])
  end

  def update
    @billboard = Billboard.find(params[:id])
    if @billboard.update(billboard_params)
      redirect_to (@billboard)
    else
      redirect_to :edit
    end
  end

  def new
    @billboard = Billboard.new
  end

  def create
    @billboard = Billboard.find(params[:id])
    if @billboard.save
      redirect_to (@billboard)
    else
      redirect_to :new
    end
  end


  private

  def billboard_params
    params.require(:billboard_params).permit(:title)
  end
end
