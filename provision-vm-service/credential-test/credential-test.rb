#!/usr/bin/env ruby

require "manageiq-api-client"

secrets = JSON.load(File.read(ENV.fetch("_CREDENTIALS")))

user     = secrets.fetch("api_user", "adminxxx")
password = secrets.fetch("api_password", "smartvmxxx")
url = secrets.fetch("url", "https://9.37.205.111")

provider_type = ENV.fetch("PROVIDER_TYPE", nil)

api = ManageIQ::API::Client.new(
  :url      => url,
  :user     => user,
  :password => password,
  :ssl      => {:verify => false}
)

response = api.providers
response = response.where(:type => provider_type) if provider_type
response = response.pluck(:id, :name)

puts({"values" => response.to_h}.to_json)
