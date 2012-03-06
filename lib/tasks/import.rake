require 'csv'
require 'open-uri'
namespace :import do
  task :codes => :environment do
    raise ArgumentError, "please provide a URL env variable with the location to a CSV file of postal codes" unless ENV["URL"]
    url = ENV["URL"]
    csv = CSV.new(open(url))

    while line = csv.gets
      PostalCode.create(:code => line[0],
                        :city => line[1],
                        :state => line[2],
                        :lat  => line[3],
                        :lng  => line[4]
                       )
    end
  end
end
