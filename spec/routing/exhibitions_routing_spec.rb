require "spec_helper"

describe ExhibitionsController do
  describe "routing" do

    it "routes to #index" do
      get("galleries/1/exhibitions").should route_to("exhibitions#index", gallery_id: "1")
    end

    it "routes to #show" do
      get("/exhibitions/1").should route_to("exhibitions#show", id: "1")
    end

  end
end
