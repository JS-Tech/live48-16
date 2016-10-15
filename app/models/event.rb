class Event < ActiveRecord::Base

  scope :recent, -> { where("sdate > ?", 3.hours.ago).order(:sdate) }

end
