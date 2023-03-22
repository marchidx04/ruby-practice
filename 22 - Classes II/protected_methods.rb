class Car
  def initialize(age, miles)
    base_value = 20000
    age_deduction = age * 1000
    miles_deduction = (miles / 10.to_f)
    @value = base_value - age_deduction - miles_deduction
  end

   def compare_car_with(car)
     self.value > car.value ? "Your car is better!" : "Your car is worse!"
   end

   protected

   def value
    @value
   end
end

car = Car.new(100, 100)

car2 = Car.new(100, 1000)

p car.compare_car_with(car2) # Your car is better!
p car2.compare_car_with(car) # Your car is worse!
p car.value # 읽을 수 없음
