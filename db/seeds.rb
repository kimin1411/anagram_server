require_relative '../app/models/word'

File.open("/usr/share/dict/words", "r").each_line do |x|
   Word.create(:word => x.gsub("\n",''))

end
