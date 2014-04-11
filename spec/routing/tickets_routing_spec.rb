require "spec_helper"

describe TicketsController do
  describe "routing" do

    it "routes to #create" do
      post("/tickets").should route_to("tickets#create")
    end

    it "routes to #destroy" do
      delete("/tickets/1").should route_to("tickets#destroy", :id => "1")
    end

  end
end
