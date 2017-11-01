#!/usr/bin/env ruby

require 'nomis/api'

path = 'health'

client_key = ENV['CLIENT_KEY']
client_token = ENV['CLIENT_TOKEN']
disable_ssl_verify = ENV.fetch('DISABLE_SSL_VERIFY', "").downcase == 'true'
path = ENV.fetch('NOMIS_API_PATH', 'health')

request = NOMIS::API::Get.new(
  client_key: client_key,
  client_token: client_token,
  path: path,
  disable_ssl_verify: disable_ssl_verify
)

t1 = Time.now
response = request.execute
t2 = Time.now

puts "Status: #{response.status}"
puts "Request time: #{t2 - t1}s"
puts "Data: #{response.data}"
