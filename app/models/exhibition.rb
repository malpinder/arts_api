class Exhibition < ActiveRecord::Base

  belongs_to :gallery
  has_many :tickets

  validates :gallery, presence: true

  def available_tickets
    max_tickets - tickets.count
  end

  def run
    opens_on..closes_on
  end
end
