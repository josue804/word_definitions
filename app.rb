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
  @word = Word.all()
  erb(:words)
end

post('/words') do
  # @id = params.fetch('id').to_i()
  @new_word = params.fetch('word')
  @word = Word.new({:word => @new_word})
  @word.save()
  @word = Word.all()
  erb(:words)
end

get('/words/:id/definitions/new') do
  @id = params.fetch('id').to_i()
  @word = Word.find(@id)
  erb(:definitions_form)
end

get('/words/:id/definitions') do
  @word = Word.find(params.fetch('id').to_i())
  erb(:definitions)
end

post('/words/:id/definitions') do
  @new_definition = params.fetch('definition')
  @definition = Definition.new({:definition => @new_definition})
  @definition.save()
  @word = Word.find(params.fetch('id').to_i())
  @word.save_definition(@definition)
  erb(:definitions)
end
