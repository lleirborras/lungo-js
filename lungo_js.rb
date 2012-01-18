require 'sinatra'
require 'json'

get '/' do
  if params.empty?
    haml :index, :format => :html5
  else
    content_type :json
    {:get => params}.to_json
  end
end

post '/' do
  content_type :json
  {:post => params}.to_json
end

put '/' do
  content_type :json
  {:put => params}.to_json
end

delete '/' do
  content_type :json
  {:delete => params}.to_json
end
