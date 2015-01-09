require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word_frequency.rb')

get ('/form') do
  erb(:form)
end

get('/result') do
  @result = (params.fetch('original_word')).word_frequency(params.fetch('phrase_words'))
  # Leaving the below in here because I would like to ask questions about it.
  # @times = if (params.fetch('original_word')).word_frequency(params.fetch('phrase_words')) == 1
  #             return "time"
  #           else
  #             return "times"
  #           end
  erb(:result)
end
