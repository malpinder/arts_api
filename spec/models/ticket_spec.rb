require 'spec_helper'

describe Ticket do

  subject { FactoryGirl.build(:ticket) }
  let(:exhibition) { subject.exhibition }
  let(:gallery) { exhibition.gallery }

  describe "validations" do
    it "cannot be saved if exhibition has no available tickets" do
      exhibition.max_tickets = 0
      expect(subject).to_not be_valid
      expect(subject).to have(1).error_on(:exhibition_id)
    end

    it "cannot be for a time before the gallery opens" do
      subject.entry_at = subject.entry_at.change(hour: gallery.opening_hour - 1)
      expect(subject).to_not be_valid
      expect(subject).to have(1).error_on(:entry_at)
    end

    it "cannot be for a time after the gallery closes" do
      subject.entry_at = subject.entry_at.change(hour: gallery.closing_hour + 1)
      expect(subject).to_not be_valid
      expect(subject).to have(1).error_on(:entry_at)
    end

    it "cannot be for a day before the exhibition opens" do
      day = (exhibition.opens_on - 1.day).day
      subject.entry_at = subject.entry_at.change(day: day)
      expect(subject).to_not be_valid
      expect(subject).to have(1).error_on(:entry_at)
    end

    it "cannot be for a day after the exhibition closes" do
      subject.entry_at = exhibition.closes_on + 1.day
      subject.entry_at = subject.entry_at.change(hour: gallery.opening_hour + 1)
      expect(subject).to_not be_valid
      expect(subject).to have(1).error_on(:entry_at)
    end

  end

end