#class for Model3 goes here
#Feel free to change the name of the class
class Port
    attr_reader :country
    attr_accessor :contraband, :tarrif
    @@all = []
    def initialize(country, contraband, tariff)
        @country = country
        @contraband = contraband
        @tarrif = tariff
        Port.all << self
    end

    def self.all
        @@all
    end

    def berths
        Berth.all.select {|berth| berth.port == self}
    end

    def ships
        berths.map {|berth| berth.ship}
    end

    def cargo_inspection
        berths.map do |berth|
            if berth.bribe == true
                berth.bribe = false
                "Sorry for the trouble, have a wonderful day ashore."
            elsif berth.ship.cargo.find{|contra| contra==@contraband} 
                "Stop! You've violated the law!"
            else
                "Everything seems to be in order. Good day."
            end
        end
    end

    def levy_tariff
        berths.map do |berth|
            if berth.bribe == true
                berth.bribe = false
                "It seems everything is already in order, good day."
            else
                "Time to pay up."
            end
        end
    end

end
