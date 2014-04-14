class ExhibitionPresenter
  include Rails.application.routes.url_helpers
  include ActionView::Helpers::NumberHelper

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
      id: @exhibition.id,
      name: @exhibition.name,
      gallery_name: @gallery.name,
      url: exhibition_path(@exhibition),
      gallery_url: gallery_path(@gallery)
    }
  end

  def show_attributes
    {
      id: @exhibition.id,
      name: @exhibition.name,
      description: @exhibition.description,
      entry_fee: number_to_currency(@exhibition.entry_fee/100.0, unit: '£'),
      available_tickets: @exhibition.available_tickets,
      gallery_name: @gallery.name,
      gallery_url: gallery_path(@gallery)
    }
  end


end
