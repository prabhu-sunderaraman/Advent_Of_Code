require './2017_day_3_part_2'



describe "2017_day_3_part_2" do
  
  it "should not be nil" do
      spiral_memory = SpiralMemory_2.new(10)
      expect(spiral_memory).not_to be_nil
    end

    it "should initialize a grid with 8 values" do
      spiral_memory = SpiralMemory_2.new 8
      expect(spiral_memory.grid.size).to eq 8
    end
    
    it "should initialize a grid with 2 values" do
       spiral_memory = SpiralMemory_2.new 2
       expect(spiral_memory.value_at(0,0)).to eq 1
       expect(spiral_memory.value_at(1,0)).to eq 1
    end
    
    it "should initialize a grid with 5 values" do
      spiral_memory = SpiralMemory_2.new 5
      expect(spiral_memory.value_at(0,0)).to eq 1
      expect(spiral_memory.value_at(1,0)).to eq 1
      expect(spiral_memory.value_at(1,1)).to eq 2
      expect(spiral_memory.value_at(0,1)).to eq 4
      expect(spiral_memory.value_at(-1,1)).to eq 5
    end
    
    it "should initialize a grid with 10 values" do
      spiral_memory = SpiralMemory_2.new 10
      expect(spiral_memory.value_at(0,0)).to eq 1
      expect(spiral_memory.value_at(1,0)).to eq 1
      expect(spiral_memory.value_at(1,1)).to eq 2
      expect(spiral_memory.value_at(0,1)).to eq 4
      expect(spiral_memory.value_at(-1,1)).to eq 5

      expect(spiral_memory.value_at(-1,0)).to eq 10
      expect(spiral_memory.value_at(-1,-1)).to eq 11
      expect(spiral_memory.value_at(0,-1)).to eq 23
      expect(spiral_memory.value_at(1,-1)).to eq 25
      expect(spiral_memory.value_at(2,-1)).to eq 26
    end

    it "should initialize a grid with 100 values" do
      spiral_memory = SpiralMemory_2.new 58
      expect(spiral_memory.value_at(3,4)).to eq 266330
    end
    
    

    
end  
