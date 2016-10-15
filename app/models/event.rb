class Event < ActiveRecord::Base

  scope :recent, -> { where("sdate > ?", 1.hour.ago).order(:sdate) }

end
