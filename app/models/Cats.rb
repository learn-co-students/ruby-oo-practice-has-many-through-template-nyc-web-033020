#class for Model2 goes here
#Feel free to change the name of the class
class Cat
    attr_reader :home, :color, :birthday
    attr_accessor :name, :cuteness 
    @@all = [ ]
    def initialize(home, color, name, birthday = Time.now)
        @home = home
        @color = color 
        @birthday = birthday
        @name = name
        @cuteness = 10
        Cat.all << self 
    end 

    def self.all
        @@all
    end 

    def name_kitten(name)
        self.name = name
    end 

    def cuteness_levels
        if @cuteness < 10
            @cuteness = 10 
        elsif @birthday > 5 
            @cutness - 1 
        end 
    end 
end
