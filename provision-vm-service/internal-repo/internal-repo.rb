#!/usr/bin/env ruby

require "manageiq-api-client"

user = "admin"
password = "smartvm" 

url = "https://9.37.205.139"

api = ManageIQ::API::Client.new(
  :url      => url,
  :user     => user,
  :password => password,
  :ssl      => {:verify => false}
)

response = api.providers
response = response.pluck(:id, :name)

puts({"values" => response.to_h}.to_json)
