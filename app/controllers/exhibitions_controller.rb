class ExhibitionsController < ApplicationController

  def index
    gallery = Gallery.find(params[:gallery_id])
    render json: ExhibitionPresenter.index(gallery.exhibitions)
  end

  def show
    render json: Exhibition.find(params[:id])
  end

end
