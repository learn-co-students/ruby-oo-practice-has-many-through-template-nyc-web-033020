require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

c_cargo =["wheat", "barley", "drugs"]

calamity = Ship.new("USA","Calamity","Jones",c_cargo)
mariel = Port.new("Cuba","drugs","7.5%")
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
