require 'csv'

namespace :import do

  task :refresh => [:reset, :load]

  desc "reset"
  task :reset => :environment do
    Event.destroy_all
  end

  desc "load"
  task :load => :environment do
    CSV.foreach('lib/assets/data.csv', :headers => true, :encoding => 'UTF-8') do |row|
      Event.create(row.to_hash)
    end
  end
end
