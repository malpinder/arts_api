require 'spec_helper'

describe Ticket do

  let(:exhibition) { FactoryGirl.create(:exhibition, max_tickets: 1) }
  subject { Ticket.new(exhibition: exhibition) }

  describe "validations" do
    it "cannot be saved if exhibition has no available tickets" do
      exhibition.max_tickets = 0
      expect(subject).to_not be_valid
      expect(subject).to have(1).error_on(:exhibition_id)
    end
  end

end