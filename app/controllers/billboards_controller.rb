class BillboardsController < ApplicationController
  def index
    @billboards = Billboard.all
  end

  def show
    @billboard = Billboard.find(params[:id])
  end
  def edit
  end

  def add
    @billboard = Billboard.new
  end
end
