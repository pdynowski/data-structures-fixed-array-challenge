require_relative 'fixed_array'

describe FixedArray do

    describe "#set" do
      let(:array) {FixedArray.new(5)}

    it "changes the value at the selected index" do
      array.set(2, 4)
      values = array.instance_variable_get(:@array)
      expect(values[2]).to eq 4
    end

    it "raises an error if the index is outside the array" do
      expect { array.set(5, 2)}.to raise_error(RangeError)
      expect { array.set(-2, 2)}.to raise_error(RangeError)
    end  

  end
  
  describe "#get" do
    before(:each) do
      @array = FixedArray.new(5)
      @array.set(2,2)
    end

    it "returns the value at the chosen index" do
      expect(@array.get(2)).to eq 2
    end

    it "raises an error if an index outside the array is given" do
      expect { @array.get(5)}.to raise_error(RangeError)
      expect { @array.get(-1)}.to raise_error(RangeError)
    end

  end



end
