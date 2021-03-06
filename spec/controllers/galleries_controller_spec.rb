require 'spec_helper'

describe GalleriesController do
  let!(:gallery) { FactoryGirl.create(:gallery) }

  describe "GET index" do
    it "returns a JSON array of gallery names and urls" do
      json = {
        galleries: [ {
          id: gallery.id,
          name: gallery.name,
          url: gallery_path(gallery),
          exhibitions: gallery_exhibitions_path(gallery)
        } ]
      }.to_json
      get :index
      response.body.should eq json
    end
  end

  describe "GET show" do
    it "returns the gallery as JSON" do
      get :show, :id => gallery.to_param
      response.body.should eq(gallery.to_json)
    end
  end

end
