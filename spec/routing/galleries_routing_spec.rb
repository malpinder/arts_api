require "spec_helper"

describe GalleriesController do
  describe "routing" do

    it "routes to #index" do
      get("/galleries").should route_to("galleries#index")
    end

    it "routes to #show" do
      get("/galleries/1").should route_to("galleries#show", :id => "1")
    end

  end
end
