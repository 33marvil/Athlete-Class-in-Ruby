require 'athlete'

describe Athlete do
   let(:athlete)   { Athlete.new }
   let(:athlete_1) { Athlete.new(0, 10)}

   describe "#initialize" do
     context "Athlete is created" do
       subject { Athlete.new }
       it(:distance) { should_not be_nil }
       it(:time) { should_not be_nil }

       it "creates a new Athlete" do
         expect(athlete).to be_an_instance_of Athlete
       end
       it "#total_distance has value equal to zero by default" do
         expect(athlete.total_distance).to eq(0)
       end
       it "#total_time has value equal to Zero by default" do
      	 expect(athlete.total_time).to eq(0)
       end
     end
  end

   describe "#validate_time" do
     context "Checks #validate_time" do
       it "if #validate_time raise an error" do
         expect{athlete_1.validate_time}.to raise_error("Values are not valid")
       end
     end
   end
end

describe Runner do
   let(:runner) { Runner.new }
   let(:runner_1) { Runner.new(10, 10) }
   let(:runner_2) { Runner.new(0, 23) }

   describe "#initialize" do
     context "Runner is created" do
       subject { Runner.new }
       it(:distance) { should_not be_nil }
       it(:time) { should_not be_nil }

       it "creates a new Runner" do
         expect(runner).to be_an_instance_of Runner
       end
       it "#total_distance has value equal to zero by default" do
         expect(runner.total_distance).to eq(0)
       end
       it "#total_time has value equal to Zero by default" do
      	 expect(runner.total_time).to eq(0)
       end
     end
   end

   describe "#validate_time" do
     context "Checks #validate_time" do
       it "if #validate_time raise an error" do
         expect{runner_2.validate_time}.to raise_error("Values are not valid")
       end
     end
   end

   describe "#speed" do
     context "Checks #speed" do
       it "#speed as attr_reader" do
         expect{runner.speed}.not_to raise_error
       end
     end
   end

   describe "#total_time" do
     context "Checks #total_time" do
       it "#total_time as attr_reader" do
         expect{runner.total_time}.not_to raise_error
       end
       it "#total_time as attr_writer" do
         expect{runner.total_time = 20}.not_to raise_error
       end
     end
   end

   describe "#speed_record" do
     context "Checks #speed_record" do
       it "if #speed_record exists" do
         expect{runner.speed_record}.not_to raise_error
       end
     end
   end

   describe "#total_distance" do
     context "Checks #total_distance" do
       it "#total_distance as attr_reader" do
         expect{runner.total_distance}.not_to raise_error
       end
       it "#total_distance as attr_writer" do
         expect{runner.total_distance = 10}.not_to raise_error
       end
     end
   end

   describe "#run" do
     context "Checks #run" do
       it "if #run returns a string with total distance, total time and speed when distance 0 and time 0" do
         expect(runner.run).to eq("Ran 0 meters, time: 0 seconds, speed: 0 m/s")
       end
       it "if #run returns a string with total distance, total time and speed when distance > 0 and time > 0" do
         expect(runner_1.run).to eq("Ran 10 meters, time: 10 seconds, speed: 1.0 m/s")
       end

     end
   end
#
   describe "#new_workout" do
     context "Checks a new workout" do
       it "if #new_workout increments total distance and total time" do
         expect{runner.new_workout(20, 7)}.not_to raise_error
         expect(runner.run).to eq("Ran 20 meters, time: 7 seconds, speed: 2.86 m/s")
       end
     end
   end

end

describe Swimmer do
   let(:swimmer) { Swimmer.new }
   let(:swimmer_1) { Swimmer.new(50, 10) }
   let(:swimmer_2) { Swimmer.new(0, 20) }

   describe "#initialize" do
     context "Swimmer is created" do
       subject { Swimmer.new(50, 10) }
       it(:distance) { should_not be_nil }
       it(:time) { should_not be_nil }

       it "creates a new Swimmer" do
         expect(swimmer).to be_an_instance_of Swimmer
       end
       it "#total_distance has value equal to zero by default" do
         expect(swimmer.total_distance).to eq(0)
       end
       it "#total_time has value equal to Zero by default" do
      	 expect(swimmer.total_time).to eq(0)
       end
      end
    end
#
   describe "#validate_time" do
     context "Checks #validate_time" do
       it "if #validate_time raise an error" do
         expect{swimmer_2.validate_time}.to raise_error("Values are not valid")
       end
     end
   end
#
   describe "#speed" do
     context "Checks #speed" do
       it "#speed as attr_reader" do
         expect{swimmer.speed}.not_to raise_error
       end
     end
   end
#
   describe "#total_time" do
     context "Checks #total_time" do
       it "#total_time as attr_reader" do
         expect{swimmer.total_time}.not_to raise_error
       end
       it "#total_time as attr_writer" do
         expect{swimmer.total_time = 20}.not_to raise_error
       end
     end
   end
#
   describe "#speed_record" do
     context "Checks #speed_record" do
       it "if #speed_record exists" do
         expect{swimmer.speed_record}.not_to raise_error
       end
     end
   end
#
   describe "#total_distance" do
     context "Checks #total_distance" do
       it "#total_distance as attr_reader" do
         expect{swimmer.total_distance}.not_to raise_error
       end
       it "#total_distance as attr_writer" do
         expect{swimmer.total_distance = 10}.not_to raise_error
       end
     end
   end
#
   describe "#swim" do
     context "Checks #swim" do
       it "if #swim returns a string with total distance, total time and speed when distance 0 and time 0" do
         expect(swimmer.swim).to eq("Swam 0 meters, time: 0 seconds, speed: 0 m/s")
       end
       it "if #swim returns a string with total distance, total time and speed when distance > 0 and time > 0" do
         expect(swimmer_1.swim).to eq("Swam 50 meters, time: 10 seconds, speed: 5.0 m/s")
       end
     end
   end
#
   describe "#new_workout" do
     context "Checks a new workout" do
       it "if #new_workout increments total distance and total time" do
         expect{swimmer_1.new_workout(10, 5)}.not_to raise_error
         expect(swimmer_1.swim).to eq("Swam 60 meters, time: 15 seconds, speed: 4.0 m/s")
       end
     end
   end
#
end
#
describe Cyclist do
   let(:cyclist) { Cyclist.new }
   let(:cyclist_1) { Cyclist.new(50, 10) }
   let(:cyclist_2) { Cyclist.new(0, 10) }

   describe "#initialize" do
     context "Cyclist is created" do
       subject { Cyclist.new(50, 10) }
       it(:distance) { should_not be_nil }
       it(:time) { should_not be_nil }

       it "creates a new Cyclist" do
         expect(cyclist).to be_an_instance_of Cyclist
       end
       it "#total_distance has value equal to zero by default" do
         expect(cyclist.total_distance).to eq(0)
       end
       it "#total_time has value equal to Zero by default" do
      	 expect(cyclist.total_time).to eq(0)
       end
     end
   end
#
   describe "#validate_time" do
     context "Checks #validate_time" do
       it "if #validate_time raise an error" do
         expect{cyclist_2.validate_time}.to raise_error("Values are not valid")
       end
     end
   end

   describe "#speed" do
     context "Checks #speed" do
       it "#speed as attr_reader" do
         expect{cyclist.speed}.not_to raise_error
       end
     end
   end
#
   describe "#total_time" do
     context "Checks #total_time" do
       it "#total_time as attr_reader" do
         expect{cyclist.total_time}.not_to raise_error
       end
       it "#total_time as attr_writer" do
         expect{cyclist.total_time = 20}.not_to raise_error
       end
     end
   end
#
   describe "#speed_record" do
     context "Checks #speed_record" do
       it "if #speed_record exists" do
         expect{cyclist.speed_record}.not_to raise_error
       end
     end
   end
#
   describe "#total_distance" do
     context "Checks #total_distance" do
       it "#total_distance as attr_reader" do
         expect{cyclist.total_distance}.not_to raise_error
       end
       it "#total_distance as attr_writer" do
         expect{cyclist.total_distance = 10}.not_to raise_error
       end
     end
   end
#
   describe "#ride_bike" do
     context "Checks #ride_bike" do
       it "if #ride_bike returns a string with total distance, total time and speed when distance 0 and time 0" do
         expect(cyclist.ride_bike).to eq("Biking 0 meters, time: 0 seconds, speed: 0 m/s")
       end
       it "if #ride_bike returns a string with total distance, total time and speed when distance > 0 and time > 0" do
         expect(cyclist_1.ride_bike).to eq("Biking 50 meters, time: 10 seconds, speed: 5.0 m/s")
       end
     end
   end
#
   describe "#new_workout" do
     context "Checks a new workout" do
       it "if #new_workout increments total distance and total time" do
         expect{cyclist_1.new_workout(10, 5)}.not_to raise_error
         expect(cyclist_1.ride_bike).to eq("Biking 60 meters, time: 15 seconds, speed: 4.0 m/s")
       end
     end
   end
#
end
