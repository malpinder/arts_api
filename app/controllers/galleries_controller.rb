class GalleriesController < ApplicationController

  def index
    names_and_urls = Gallery.all.collect do |gallery|
      { name: gallery.name, url: gallery_path(gallery), exhibitions: gallery_exhibitions_path(gallery) }
    end
    render json: { galleries: names_and_urls }
  end

  def show
    render json: Gallery.find(params[:id])
  end

end
