require('sinatra')
require('sinatra/reloader')
require('./lib/word')
require('./lib/difinition')
also_reload('lib/**/*.rb')


get('/') do
  @words = Word.all()
  erb(:index)
end

post('/new_word') do
  word = params.fetch('new_word')
  new_word = Word.new(word)
  new_word.save()
  redirect(:index)
end

get('/index') do
  @words = Word.all()
  erb(:index)
end


get('/word/:id') do
  @word = Word.find(params.fetch('id').to_i())
  @difinitions = @word.difinition()
  erb(:word)
end

get('/word/:id/new_difinition/new') do
  @word = Word.find(params.fetch('id').to_i())
  erb(:word_difinition)
end

post('/new_difinition') do
  description = params.fetch('description')
  type = params.fetch('type')
  word = params.fetch('word')
  new_difinition = Difinition.new(:type => type, :word => word, :description => description)
  id = params.fetch('id')
  @word = Word.find(params.fetch('id').to_i())
  @word.add_difinition(new_difinition)
  redirect("/word/#{id}")
end
