class Ticket < ActiveRecord::Base

  belongs_to :exhibition

  validates :exhibition, presence: true
  validates :entry_at, presence: true

  # Don't run these validations if exhibition is nil.
  validate :exhibition_has_available_tickets, unless: "exhibition.nil?"
  validate :entry_at_is_during_opening_hours, unless: "exhibition.nil?"
  validate :entry_at_is_during_exhibition_run, unless: "exhibition.nil?"

  def exhibition_has_available_tickets
    if exhibition.available_tickets < 1
      errors.add :exhibition_id, "must be an exhibition with available tickets"
    end
  end

  def entry_at_is_during_opening_hours
    unless gallery.opening_hours.include?(entry_at.hour)
      errors.add :entry_at, "must be during the gallery's opening times"
    end
  end

  def entry_at_is_during_exhibition_run
    unless exhibition.run.include?(entry_at.to_date)
      errors.add :entry_at, "must be during the exhibition's un"
    end
  end

  def gallery
    exhibition.gallery
  end
end
