#http://adventofcode.com/2018/day/3


class Fabric
  attr_reader :grid, :common_square_inches, :non_overlapped_claim_no
  
  def initialize
    @grid = Hash.new
    @common_square_inches = 0
    @non_overlapped_claim_no = ''
    @overlapped_claims = []
    @all_claims = []
  end
  
  def set_claims input
    lines = input.split(/\n+/)
    lines.each  do |line|
      line.gsub!(/\s+/, '')
      claim_no = line.split("@")[0]
      @all_claims << claim_no
      position = line.split("@")[1].split(":")[0]
      lb = line.split("@")[1].split(":")[1]
      x = position.split(",")[0].to_i
      y = position.split(",")[1].to_i
      len = lb.split("x")[0].to_i
      bre = lb.split("x")[1].to_i
      
      start_x = x + 1
      end_x = x + len
      
      start_y = y + 1
      end_y = y + bre
      
      start_range = start_x .. end_x
      end_range = start_y .. end_y
        
      start_range.each do |xpos|
        end_range.each  do |ypos|
          if @grid["#{xpos},#{ypos}"].nil? 
            @grid["#{xpos},#{ypos}"] = claim_no
          elsif
            @grid["#{xpos},#{ypos}"] += ", " + claim_no
            @grid["#{xpos},#{ypos}"].split(", ").each do |clno|
              if !@overlapped_claims.include? clno
                @overlapped_claims << clno
              end  
            end 
            
          end  
        end
        
      end
      
    end
   
    @grid.each do |key, value|
      if value.include? ","
        @common_square_inches += 1
      end
    end
    @all_claims.each do |clno|
      if !@overlapped_claims.include? clno
        @non_overlapped_claim_no = clno
      end
    end
    puts "non_overlapped_claim_no: #{@non_overlapped_claim_no}"
  end
  
  
end