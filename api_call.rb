# api_call.rb

require 'uri'
require 'net/http'
require 'json'

uri = URI('https://data.cityofnewyork.us/resource/mch6-rqy4.json?$limit=1')
res = Net::HTTP.get_response(uri)
puts res.body if res.is_a?(Net::HTTPSuccess)

body_hash = JSON.parse(res.body)[0] 
# Error checking for ability to convert
# Use iterator / map instead of this
start_lat = body_hash["pickup_latitude"].to_i
start_long = body_hash["pickup_longitude"].to_i
end_lat = body_hash["dropoff_latitude"].to_i
end_long = body_hash["dropoff_longitude"].to_i
