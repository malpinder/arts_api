class Exhibition < ActiveRecord::Base

  belongs_to :gallery
  has_many :tickets

  validates :gallery, presence: true

  def available_tickets
    max_tickets - tickets.count
  end
end
