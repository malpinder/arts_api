require 'spec_helper'

describe ExhibitionsController do
  let!(:exhibition) { FactoryGirl.create(:exhibition) }

  describe "GET index" do
    it "returns a JSON array of exhibition names and urls" do
      json = {
        exhibitions: [ {
          id: exhibition.id,
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
      json = {
        id: exhibition.id,
        name: exhibition.name,
        description: exhibition.description,
        entry_fee: "£1.00",
        available_tickets: 10,
        gallery_name: "A Gallery",
        gallery_url: gallery_path(exhibition.gallery)
      }.to_json
      get :show, :id => exhibition.to_param
      response.body.should eq(json)
    end
  end

end
