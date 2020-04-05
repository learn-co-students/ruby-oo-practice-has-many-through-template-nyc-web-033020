
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


bf = Kenji.new(10)
bf2 = Kenji.new(5)
bf3 = Kenji.new(8)

liz = Appartment.new("Bushwick","Green")
matt = Appartment.new("Philly","White")
kenji = Appartment.new("Crown Heights", "White")

greg = Cat.new(liz, "Orange", "Greggory")
rocky = Cat.new(matt,"Black and white", "Rocky")

sylvia = Cat.new(liz, "Grey", "Sylvia")

stella = Cat.new(kenji, "Grey", "Stella")
rupert = Cat.new(kenji, "Black","Rupert")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
