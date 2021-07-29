require "./lib/Bike"


class DockingStation
	attr_reader :dock
	def initialize
		@dock = []
	end

	def release_bike
		raise "no bikes to release" if check == false
  	bike = Bike.new
	end

	def dock_bike
		@dock.push(Bike.new)
	end
	def check
		if @dock.count > 0
			return true
		else
			return false
		end
  end
end