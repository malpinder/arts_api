class Exhibition < ActiveRecord::Base

  belongs_to :gallery
  has_many :tickets

  validates :gallery, presence: true
end
