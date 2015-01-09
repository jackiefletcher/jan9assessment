require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word_frequency.rb')

get ('/form') do
  erb(:form)
end

get('/result') do
  @result = (params.fetch('original_word')).word_frequency(params.fetch('phrase_words'))
  erb(:result)
end
