class GalleriesController < ApplicationController

  def index
    render json: GalleryPresenter.index(Gallery.all)
  end

  def show
    render json: Gallery.find(params[:id])
  end

end
