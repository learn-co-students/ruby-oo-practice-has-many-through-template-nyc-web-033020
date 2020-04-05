#class for Model2 goes here
#Feel free to change the name of the class
class Model2
  @all = []
  
  attr_reader
  attr_accessor

  def initialize

    Model.all << self
  end

  def self.all 
    @@all

end
