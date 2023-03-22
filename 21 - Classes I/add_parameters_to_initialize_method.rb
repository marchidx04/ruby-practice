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

  def initialize(useername = "User #{rand(1..100)}", password = "topsecret")
    @username = username
    @password = password
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
  end

  def info
    "Gadget #{@production_number} has the username #{@username}"
  end

  def to_s
    "Override!!!"
  end
end

g1 = Gadget.new("rubyfan102", "programming123")
g2 = Gadget.new("misterprogrammer", "bestpassever")
g3 = Gadget.new("sportsfan100")

p g1
p g2
p g3
