#class for Model1 goes here
#Feel free to change the name of the class
class Model1
  @all = []
  
  attr_reader
  attr_accessor

  def initialize

    Model.all << self
  end

  def self.all 
    @@all
  end
end
