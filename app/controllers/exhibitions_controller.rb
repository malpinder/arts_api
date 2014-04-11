class ExhibitionsController < ApplicationController

  def index
    gallery = Gallery.find(params[:gallery_id])
    names_and_urls = gallery.exhibitions.collect do |exhibition|
      { name: exhibition.name,
        gallery_name: gallery.name,
        url: exhibition_path(exhibition),
        gallery_url: gallery_path(gallery)
      }
    end
    render json: { exhibitions: names_and_urls }
  end

  def show
    render json: Exhibition.find(params[:id])
  end

end
