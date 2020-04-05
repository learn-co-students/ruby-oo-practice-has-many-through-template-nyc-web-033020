#class for Model3 goes here
#Feel free to change the name of the class
class Kenji
    attr_accessor :mood 
    def initialize(mood = 6)
        @mood = mood 
    end 

    def watch_a_movie 
        @mood += 3
    end 
  
   def la_beast_new_video 
        @mood += 4 
   end 

end
