require 'Bike'

describe Bike do

    describe "Responds to 'working?'" do
        it { is_expected.to respond_to(:working?) }
    end
    
end