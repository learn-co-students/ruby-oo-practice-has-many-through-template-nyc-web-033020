#class for Model3 goes here
#Feel free to change the name of the class
class Model3
  @all = []
  
  attr_reader
  attr_accessor

  def initialize

    Model.all << self
  end

  def self.all 
    @@all
  
end
