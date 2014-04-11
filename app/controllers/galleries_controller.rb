class GalleriesController < ApplicationController

  def index
    names_and_urls = Gallery.all.collect do |gallery|
      { name: gallery.name, url: gallery_path(gallery) }
    end
    render json: { galleries: names_and_urls }
  end

  def show
    render json: Gallery.find(params[:id])
  end

end
