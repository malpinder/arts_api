class Ticket < ActiveRecord::Base

  belongs_to :exhibition

  validates :exhibition, presence: true
  validate :exhibition_has_available_tickets

  def exhibition_has_available_tickets
    if exhibition && exhibition.available_tickets < 1
      errors.add :exhibition_id, "must be an exhibition with available tickets"
    end
  end
end
