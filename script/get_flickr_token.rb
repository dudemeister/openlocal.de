#!/usr/bin/env ruby
require 'rubygems'
require 'flickraw'
require 'ruby-debug'

Debugger.start

FlickRaw.api_key="4f05d5ed33e469e30f6e4fc60876d37d"
FlickRaw.shared_secret="fa7d2f45b8f5c525"

frob = flickr.auth.getFrob
auth_url = FlickRaw.auth_url :frob => frob, :perms => 'read'

puts "Open this url in your process to complete the authication process : #{auth_url}"
puts "Press Enter when you are finished."
STDIN.getc

begin
  foo = flickr.auth.getToken :frob => frob
  login = flickr.test.login
  puts foo.token
  puts "You are now authenticated as #{login.username}"
rescue FlickRaw::FailedResponse => e
  puts "Authentication failed : #{e.msg}"
end
