require('sinatra')
require('sinatra/reloader')
require('./lib/difinition')

post('/') do
  erb(:index)
end
