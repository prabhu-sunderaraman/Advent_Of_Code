require './2017_day_3'



describe "2017_day_3" do
  
    
    
    it "should not be nil" do
      spiral_memory = SpiralMemory.new(10)
      expect(spiral_memory).not_to be_nil
    end

    it "should initialize a grid with 8 values" do
      spiral_memory = SpiralMemory.new 8
      expect(spiral_memory.grid.size).to eq 8
    end
    
    it "should initialize a grid with 2 values" do
       spiral_memory = SpiralMemory.new 2
       expect(spiral_memory.value_at(0,0)).to eq 1
       expect(spiral_memory.value_at(1,0)).to eq 2
    end
    
    it "should initialize a grid with 5 values" do
      spiral_memory = SpiralMemory.new 5
      expect(spiral_memory.value_at(0,0)).to eq 1
      expect(spiral_memory.value_at(1,0)).to eq 2
      expect(spiral_memory.value_at(1,1)).to eq 3
      expect(spiral_memory.value_at(0,1)).to eq 4
      expect(spiral_memory.value_at(-1,1)).to eq 5
    end
    
    it "should initialize a grid with 10 values" do
      spiral_memory = SpiralMemory.new 10
      expect(spiral_memory.value_at(0,0)).to eq 1
      expect(spiral_memory.value_at(1,0)).to eq 2
      expect(spiral_memory.value_at(1,1)).to eq 3
      expect(spiral_memory.value_at(0,1)).to eq 4
      expect(spiral_memory.value_at(-1,1)).to eq 5
      
      expect(spiral_memory.value_at(-1,0)).to eq 6
      expect(spiral_memory.value_at(-1,-1)).to eq 7
      expect(spiral_memory.value_at(0,-1)).to eq 8
      expect(spiral_memory.value_at(1,-1)).to eq 9
      expect(spiral_memory.value_at(2,-1)).to eq 10
    end

    it "should return 0 step for 1" do
      spiral_memory = SpiralMemory.new 10
      output = spiral_memory.calc_steps 1
      expect(output).to eq 0
    end
    
    it "should return 1 step for 2" do
      spiral_memory = SpiralMemory.new 10
      output = spiral_memory.calc_steps 2
      expect(output).to eq 1
    end
    
    it "should return 3 steps for 12" do
      spiral_memory = SpiralMemory.new 15
      output = spiral_memory.calc_steps 12
      expect(output).to eq 3
    end
    
    it "should return 2 steps for 23" do
      spiral_memory = SpiralMemory.new 25
      output = spiral_memory.calc_steps 23
      expect(output).to eq 2
    end
    
    it "should return 31 steps for 1024" do
      spiral_memory = SpiralMemory.new 1025
      output = spiral_memory.calc_steps 1024
      expect(output).to eq 31
    end
    
    it "should return 438 steps for 265149" do
      spiral_memory = SpiralMemory.new 265150
      output = spiral_memory.calc_steps 265149
      expect(output).to eq 438
    end

    
end  
