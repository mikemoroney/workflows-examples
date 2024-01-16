#!/usr/bin/env ruby
require "json"

secrets = JSON.load(File.read(ENV.fetch("_CREDENTIALS")))
mytoken     = secrets.fetch("token")

puts mytoken
sleep(60)
