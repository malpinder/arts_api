require 'spec_helper'

describe Exhibition do
  subject { FactoryGirl.create(:exhibition, max_tickets: 1) }

  describe "#available_tickets" do
    it "starts at the exhibitions max tickets" do
      expect(subject.available_tickets).to eq 1
    end
    it "is reduced by the number of tickets" do
      expect {
        subject.tickets = [FactoryGirl.create(:ticket, exhibition: subject)]
      }.to change{ subject.available_tickets }.from(1).to(0)
    end
    it "goes up when the tickets are removed" do
      subject.tickets = [FactoryGirl.create(:ticket, exhibition: subject)]
      expect {
        subject.tickets = []
      }.to change { subject.available_tickets }.from(0).to(1)
    end
  end

end