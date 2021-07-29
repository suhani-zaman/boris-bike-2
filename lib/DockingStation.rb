require "./lib/Bike"


class DockingStation
	attr_reader :dock
	def initialize
		@dock = []
	end

	def release_bike
		raise "no bikes to release" if check == false
		if check == true
			bike = @dock.pop()
		end
	end

	def dock
		raise "Dock station full" if @dock.count >= 20
		if @dock.count < 20
			@dock << Bike.new
		end
	end
	def check
		if @dock.count > 0
			return true
		else
			return false
		end
  end
end