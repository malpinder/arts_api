class GalleryPresenter
  include Rails.application.routes.url_helpers

  def self.index(galleries)
    data = galleries.collect do |gallery|
      self.new(gallery).index_attributes
    end
    { galleries: data }
  end

  def initialize(gallery)
    @gallery = gallery
  end

  def index_attributes
    {
      name: @gallery.name,
      url: gallery_path(@gallery),
      exhibitions: gallery_exhibitions_path(@gallery)
    }
  end


end