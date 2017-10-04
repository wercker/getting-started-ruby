require 'sinatra'
require 'json'

get '/' do
      content_type :json
        return {:cities=> ["Amsterdam", "San Francisco", "Berlin", "New York", "Tokyo"]}.to_json
end
