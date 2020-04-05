#class for Model1 goes here
#Feel free to change the name of the class
class Ship
    attr_reader :flag
    attr_accessor :captain, :cargo
    @@all = []
    def initialize(flag, name, captain, cargo)
        @flag = flag
        @captain = captain
        @cargo = cargo
        Ship.all << self
    end

    def self.all
        @@all
    end

    def new_berth(port)
        Berth.new(self, port)
    end

    def berths
        Berth.all.select {|berth| berth.ship == self}
    end

    def current_berth
        berths.last
    end

    def ports
        berths.map {|berth| berth.port}
    end

    def bribe_harbor_master
        current_berth.bribe = true
        "Time to grease the wheels."
    end

    def dump_contraband
        self.cargo = self.cargo.map do |index|
            if index == current_berth.port.contraband
                index = nil
            else
                index = index
            end
        end
        self.cargo.compact
    end


end
