class ExhibitionsController < ApplicationController

  def index
    gallery = Gallery.find(params[:gallery_id])
    render json: ExhibitionPresenter.index(gallery.exhibitions)
  end

  def show
    exhibition = Exhibition.find(params[:id])
    render json: ExhibitionPresenter.new(exhibition).show_attributes
  end

end
