require 'rubygems'
require 'flickraw'

FlickRaw.api_key="4f05d5ed33e469e30f6e4fc60876d37d"
FlickRaw.shared_secret="fa7d2f45b8f5c525"

auth = flickr.auth.checkToken :auth_token => "72157622279155619-4354fba7f7c86941"

# From here you are logged:
puts auth.user.username
