class DockingStation
    def release_bike
        if @bike == nil
          raise "No bikes available"
        else
          @bike
        end
    end

    def dock(bike)
        @bike = bike
    end
    #def bike
    #    @bike
    #end

    attr_reader :bike
end
