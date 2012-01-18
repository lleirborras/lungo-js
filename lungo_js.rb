require 'sinatra'
require 'json'

get '/' do |p|
  haml :index, :format => :html5
end

get '/:params' do |p|
  content_type :json
  { :params => p }.to_json
end

post '/' do
  content_type :json
  { :params => params }.to_json
end
