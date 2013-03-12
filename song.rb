require 'dm-core'
require 'dm-migrations'

DataMapper.setup(:default, "postgres://localhost/jumpstart_sinatra")

class Song
  include DataMapper::Resource
  property :id, Serial
  property :title, String
  property :lyrics, Text
  property :length, Integer
  property :released_on, Date 
end

DataMapper.finalize