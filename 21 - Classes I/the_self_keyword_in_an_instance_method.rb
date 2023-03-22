class Gadget
  def initialize
    @username = "User #{rand(1..100)}"
    @password = "topsecret"
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
  end

  def info
    "Gadget #{@production_number} has the username #{@username}. It is made from the #{self.class} class and it has the ID #{self.object_id}"
  end

  def to_s
    "Override!!!"
  end
end

phone = Gadget.new
laptop = Gadget.new

p phone.info
p laptop.info

puts phone.methods - Object.methods # info

p phone.class # Gadget
p phone.class.superclass # Object

p phone.to_s # "Override!!!" <- Gadget의 to_s를 먼저 찾고 메서드 실행
