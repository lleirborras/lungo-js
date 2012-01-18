require 'sinatra'

get '/:params' do |p|
  content_type :json
  { :params => p }.to_json
end

post '/' do
  content_type :json
  { :params => params }.to_json
end
