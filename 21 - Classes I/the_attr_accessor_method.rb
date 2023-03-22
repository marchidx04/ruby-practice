class Gadget

  # attr_accessor :username
  # attr_reader :production_number
  # attr_writer :password
  attr_reader :production_number, :username
  attr_writer :password, :username

=begin
  attr_accesstor로 아래 getter, setter 줄일 수 있음
  def username # getter
    @username
  end

  def username=(new_username) # setter
    @username = new_username
  end

  아래는 reader로만
  def production_number
    @production_number
  end

  아래는 attr_writer로만
  def password=(password)
    @password = password
  end
=end

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
