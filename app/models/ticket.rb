class Ticket < ActiveRecord::Base

  belongs_to :exhibition

  validates :exhibition, presence: true
end
