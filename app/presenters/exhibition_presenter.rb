class ExhibitionPresenter
  include Rails.application.routes.url_helpers

  def self.index(exhibitions)
    data = exhibitions.collect do |exhibit|
      self.new(exhibit).index_attributes
    end
    { exhibitions: data }
  end

  def initialize(exhibition)
    @exhibition = exhibition
    @gallery = exhibition.gallery
  end

  def index_attributes
    {
      name: @exhibition.name,
      gallery_name: @gallery.name,
      url: exhibition_path(@exhibition),
      gallery_url: gallery_path(@gallery)
    }
  end


end