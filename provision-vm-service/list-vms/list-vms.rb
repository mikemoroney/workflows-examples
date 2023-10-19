#!/usr/bin/env ruby

require 'bundler/setup'
require "manageiq-api-client"

secrets = JSON.load(File.read(ENV.fetch("_CREDENTIALS")))

user     = secrets.fetch("api_user", "adminxxx")
password = secrets.fetch("api_password", "smartvmxxx")

url        = ENV.fetch("API_URL", "http://localhost:3000")

api = ManageIQ::API::Client.new(
  :url      => url,
  :user     => user,
  :password => password,
  :ssl      => {:verify => false}
)

vms = api.vms
response = response.pluck(:id, :name)
puts({"values" => response.to_h}.to_json)
