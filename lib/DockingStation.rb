require "./lib/Bike"


class DockingStation
	attr_reader :dockstation, :capacity
	DEFAULT_CAPACITY = 20
	def initialize(capacity = 20)
		@dockstation = []
		@capacity = capacity
	end

	def release_bike
	  raise "no bikes to release" if empty? == true
	  length = @dockstation.count
	  if (@dockstation[length-1]).working? == true
		@dockstation.pop()
	  else
	    raise "Bike is broken! try another one"
	  end

	end

	def dock(bike = Bike.new)
		raise "Dock station full" if full? == true 
		@dockstation << bike
		if bike.working? == false
			raise "Bike is broken"
		end	
	end
	private
	def empty?
		if @dockstation.count == 0
			return true
		else
			return false
		end
  end

	def full?
		if @dockstation.count >= @capacity
			return true
		else
			return false
		end
	end
end 

station = DockingStation.new
station.dock