class MyCar
  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
  end

  attr_accessor :color

  attr_reader :year, :model

  def change_color(color)
    self.color = color
    puts "You painted the car #{color}"
  end

  def speed_up
    @speed += 1
  end

  def break
    @speed -= 1
  end

  def shut_down
    @speed = 0
  end

  def odometer
    puts "You are moving at #{@speed}km/h"
  end

  def info
    puts "You are driving a #{year} #{color} #{model}"
  end
end

gt3000 = MyCar.new(1995, "red", "mitsubishi 3000gt")
gt3000.speed_up
gt3000.odometer
gt3000.speed_up
gt3000.odometer
gt3000.speed_up
gt3000.odometer
gt3000.break
gt3000.odometer
gt3000.shut_down
gt3000.odometer

gt3000.info
gt3000.change_color("blue")
gt3000.info
