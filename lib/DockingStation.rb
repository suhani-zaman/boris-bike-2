require "./lib/Bike"


class DockingStation
	attr_reader :dock
	def initialize
		@dock = []
	end

	def release_bike
		Bike.new
	end

	def dock_bike
		@dock.push(Bike.new)
	end

	def check
		if dock.empty?
			puts "No bikes, sorry"
		else
			dock
		end
	end

end