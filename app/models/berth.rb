#class for Model2 goes here
#Feel free to change the name of the class
class Berth
    attr_reader :port
    attr_accessor :ship, :bribe
    @@all=[]
    def initialize(ship, port)
        @port = port
        @ship = ship
        @bribe = false
        Berth.all << self
    end

    def self.all
        @@all
    end

    def ships
        Berth.all.select {|berth| berth.ship}
    end

    def ports
        Berth.all.select {|berth| berth.port}
    end

end
