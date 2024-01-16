#!/usr/bin/env ruby
require "json"
require "manageiq-api-client"

secrets = JSON.load(File.read(ENV.fetch("_CREDENTIALS")))
token     = secrets.fetch("token")

puts token
sleep(60)
