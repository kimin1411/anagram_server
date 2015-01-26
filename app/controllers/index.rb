require_relative '../models/word'
require_relative 'anagram'

get '/:word' do
  @word   =  "Show a list of anagrams for #{params[:word]}"
  @result =  Word.anagrams("#{params[:word]}")
  erb :index
end


