#!/usr/bin/env ruby
require "json"

secrets = JSON.load(File.read(ENV.fetch("_CREDENTIALS")))
result = {
  "token" => "abc123"
}

puts result.to_json
sleep(60)
return result.to_json
