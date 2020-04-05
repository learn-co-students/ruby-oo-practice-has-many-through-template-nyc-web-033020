
class Appartment 
    attr_reader :location 
    attr_accessor :wall_color, :boyfriend 
    @@all = [ ]
    def initialize(locatin, wall_color)
        @location = location 
        @wall_color = wall_color 
        @boyfriend = boyfriend 
        #@amount_of_cats = (Cats.all.select{|cat| cat.home == self })
    end 

    def paint_the_living_room(color)
        self.wall_color = color 
        puts "The living room is #{self.wall_color}!"
        self.boyfriend.mood =- 2 
    end 
    def introduces_boyfriend_to_cat(boyfriend)
        @boyfriend = boyfriend 
    end 

    def adobpt_a_cat(color, date)
        Cat.new(self, color, date)
        #Kenji.mood =- 4
    end 

    def amount_of_cats
        Cat.all.select{|cat| cat.home == self }
    end 

    def how_many_cats 
        Cat.all.select do |cat|
            cat.home == self 
        end 
    end 

end
