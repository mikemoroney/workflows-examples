#!/usr/bin/env ruby

require "manageiq-api-client"

secrets = JSON.load(File.read(ENV.fetch("_CREDENTIALS")))

user     = secrets.fetch("api_user", "adminxxx")
password = secrets.fetch("api_password", "smartvmxxx")

url = "https://9.37.205.111"
#url        = ENV.fetch("API_URL")

api = ManageIQ::API::Client.new(
  :url      => url,
  :user     => user,
  :password => password,
  :ssl      => {:verify => false}
)

response = api.providers
response = response.pluck(:id, :name)

puts({"values" => response.to_h}.to_json)
