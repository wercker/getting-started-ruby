require 'sinatra'
require 'json'

cities = {:cities=> ["Amsterdam","Berlin","New York","San Francisco","Tokyo"]}

get '/' do
      content_type :json
        return cities.to_json
end
