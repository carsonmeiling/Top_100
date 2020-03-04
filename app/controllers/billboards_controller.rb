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

  def new
    @billboard = Billboard.new
  end
end
