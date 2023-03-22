class Gadget
  def initialize
    @username = "User #{rand(1..100)}"
    @password = "topsecret"
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
  end

  def info
    "Gadget #{@production_number} has the username #{@username}"
  end

  def to_s
    "Override!!!"
  end

  def username # getter
    @username
  end

  def username=(new_username)
    @username = new_username
  end

  def production_number
    @production_number
  end

  def password=(password)
    @password = password
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
p phone.username # "User 100"

p phone.password=('Oneny')
p phone # @password 바뀐 것 확인 가능
phone.username=("rubyman")
p phone.username # rubyman
phone.password = "bestpassword"
phone.username = 'JAeWOn'
p phone