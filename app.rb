require('sinatra')
require('sinatra/reloader')
require('./lib/word')
require('./lib/definition')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/words') do
  @words = Word.all()
  erb(:words)
end

get('/words/new') do
  erb(:words_form)
end
