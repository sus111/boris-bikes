class DockingStation
    def release_bike
        if @bike == nil
          raise "No bikes available"
        else
          @bike
        end
    end

    def dock(bike)
      if @bike == nil
        @bike = bike
      else
        raise "Docking Station full"
      end
    end
    #def bike
    #    @bike
    #end

    attr_reader :bike
end
