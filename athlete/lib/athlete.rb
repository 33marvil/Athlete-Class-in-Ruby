#code goes here

class Athlete
  attr_accessor :total_distance, :total_time
  attr_reader :speed

  def initialize(total_distance=0, total_time=0)
    @total_distance = total_distance
    @total_time = total_time
    @speed = 0
  end

  def speed_record
    @total_time == 0 ? @speed = 0 : @speed = (@total_distance / @total_time.to_f).round(2)
  end

  def validate_time # operador ternario
    (if @total_time > 0 && @total_distance == 0 then raise "Values are not valid" end)
    # if @total_time > 0 && @total_distance == 0
    #   raise "Values are not valid"
    # end
  end

  def new_workout(distance, time)
    @total_distance += distance
    @total_time += time
  end

end

class Runner<Athlete

  def run
    "Ran #{@total_distance} meters, time: #{@total_time} seconds, speed: #{speed_record} m/s"
  end

end

class Swimmer<Athlete

  def swim
    "Swam #{@total_distance} meters, time: #{@total_time} seconds, speed: #{speed_record} m/s"
  end

end

class Cyclist<Athlete

  def ride_bike
    "Biking #{@total_distance} meters, time: #{@total_time} seconds, speed: #{speed_record} m/s"
  end

end
