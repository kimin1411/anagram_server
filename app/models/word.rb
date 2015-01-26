class Word < ActiveRecord::Base
  # Remember to create a migration!

  def self.check(word)
    word.downcase.chars.sort
  end

  def self.anagrams(word)
    list = Array.new
    Word.all.each do |x|
     if check(x.word) == check(word)
        list << x.word
      end
    end
    return list
  end

end
