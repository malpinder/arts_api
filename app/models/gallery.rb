class Gallery < ActiveRecord::Base

  has_many :exhibitions

  validates :opening_hour, inclusion: { in: 0..23 }
  validates :closing_hour, inclusion: { in: 0..23 }
end
