class Bike
  attr_accessor :state
  def initialize(state = 'functioning')
    @state = state
  end
  def working?
    if @state == "functioning"
		return true
	else
		return false
    end
  end
end