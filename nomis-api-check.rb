#!/usr/bin/env ruby

require 'nomis/api'

path = 'health'

base_url = ENV['BASE_URL']
client_key = ENV['CLIENT_KEY']
client_token = ENV['CLIENT_TOKEN']

request = NOMIS::API::Get.new(
  base_url: base_url,
  client_key: client_key,
  client_token: client_token,
  path: path
)

t1 = Time.now
response = request.execute
t2 = Time.now

puts "Status: #{response.status}"
puts "Request time: #{t2 - t1}s"
puts "Data: #{response.data}"
