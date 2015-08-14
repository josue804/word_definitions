require('sinatra')
require('sinatra/reloader')
require('./lib/word')
require('./lib/definition')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/words/new') do
  erb(:words_form)
end

get('/words') do
  @words = Word.all()
  erb(:words)
end

post('/words') do
  @new_word = params.fetch('word')
  @word = Word.new({:word => @new_word})
  @word.save()
  @word = Word.all()
  erb(:words)
end
