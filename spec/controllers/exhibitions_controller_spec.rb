require 'spec_helper'

describe ExhibitionsController do
  let!(:exhibition) { FactoryGirl.create(:exhibition) }

  describe "GET index" do
    it "returns a JSON array of exhibition names and urls" do
      json = {
        exhibitions: [ {
          name: exhibition.name,
          gallery_name: exhibition.gallery.name,
          url: exhibition_path(exhibition),
          gallery_url: gallery_path(exhibition.gallery)
        } ]
      }.to_json
      get :index, gallery_id: exhibition.gallery.id
      response.body.should eq json
    end
  end

  describe "GET show" do
    it "returns the exhibition as JSON" do
      get :show, :id => exhibition.to_param
      response.body.should eq(exhibition.to_json)
    end
  end

end
