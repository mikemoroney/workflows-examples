#!/usr/bin/env ruby
require "json"
require "manageiq-api-client"

secrets = JSON.load(File.read(ENV.fetch("_CREDENTIALS")))
result = {
  "token" => "abc123"
}

puts result.to_json
sleep(60)
