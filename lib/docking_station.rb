require_relative 'bike'
class DockingStation
    def initialize
        @bikes = []
    end

    def release_bike
        raise "No bikes available" if @bikes.empty?
        @bikes.pop
    end

    def dock(bike)
        raise "Docking Station full" if @bikes.count >= 20
        @bikes.push(bike)
        self.show_last_bike
    end

    #attr_reader :bikes

    def show_last_bike
      @bikes.last
    end

end
