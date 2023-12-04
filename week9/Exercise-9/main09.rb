class Employee

    def prepare(bike)
      bike.preparation
    end
  
end
  
class Bicycle
    
    def initialize(type)
        @type = type;
        @preparation = nil
    end

    def setPreparation(preparation)
      @preparation = preparation
    end

    def preparation()
      puts @preparation
    end
end

class BmxBike < Bicycle
end
  
class RoadBike < Bicycle
end
  
class MountainBike < Bicycle
end
  
class Tricycle < Bicycle 
end
  
bikes = [BmxBike.new("BMX"), RoadBike.new("Road"), MountainBike.new("Mountain"), Tricycle.new("Tricycle")]
bikes[0].setPreparation('Cleaning...')
bikes[1].setPreparation('Lubricating gears...')
bikes[2].setPreparation('Adjusting suspension...')
bikes[3].setPreparation('Adjusting seat...')
  
employee = Employee.new
  
bikes.each do |bike|
    employee.prepare(bike)
end