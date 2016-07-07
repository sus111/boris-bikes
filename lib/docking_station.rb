require_relative 'bike'
class DockingStation

DEFAULT_CAPACITY = 20

    def initialize(capacity = DEFAULT_CAPACITY)
        @bikes = []
        @capacity = capacity
    end

    def release_bike
        raise "No bikes available" if empty?
        bikes.pop
    end

    def dock(bike)
        raise "Docking Station full" if full?
        bikes.push(bike)
        self.show_last_bike
    end

    attr_reader :capacity

    def show_last_bike
      bikes.last
    end

private

    attr_reader :bikes

    def full?
      bikes.count >= DEFAULT_CAPACITY
    end

    def empty?
      bikes.empty?
    end

end
