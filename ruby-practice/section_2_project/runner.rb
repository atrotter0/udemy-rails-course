require 'pp'
require_relative 'user'

user = User.new('jon.snow@example.com', 'Jon')

pp user

user.save