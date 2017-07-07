require('sinatra')
require('sinatra/reloader')
require('./lib/dictionary')

get('/') do
  erb(:index)
end
