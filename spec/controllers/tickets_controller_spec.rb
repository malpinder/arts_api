require 'spec_helper'

describe TicketsController do
  let!(:exhibition) { FactoryGirl.create(:exhibition) }

  let(:valid_attributes) do
   { exhibition_id: exhibition.id, name: "Frida Kahlo", entry_at: "23/5/2014 10:00" }
 end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Ticket" do
        expect {
          post :create, {:ticket => valid_attributes}
        }.to change(Ticket, :count).by(1)
      end

      it "renders created ticket" do
        post :create, {:ticket => valid_attributes}
        response.body.should eq Ticket.last.to_json
      end
    end

    describe "with invalid params" do
      it "renders the errors" do
        post :create, ticket: { name: "Frida Kahlo", entry_at: "23/5/2014 10:00" }
        response.body.should eq({exhibition: ["can't be blank"]}.to_json)
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested ticket" do
      ticket = FactoryGirl.create(:ticket)
      expect {
        delete :destroy, {:id => ticket.to_param}
      }.to change(Ticket, :count).by(-1)
    end
  end

end
