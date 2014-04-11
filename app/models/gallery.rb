class Gallery < ActiveRecord::Base

  validates :opening_hour, inclusion: { in: 0..23 }
  validates :closing_hour, inclusion: { in: 0..23 }
end
