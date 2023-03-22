module LengthConversions
  WEBSITE = "https://www.angelo.edu/dept/agriculture/faculty/scott_conversions.php"

  def self.miles_to_feet(miles)
    miles * 5280
  end

  def self.miles_to_inches(miles)
    feet = miles_to_feet(miles)
    feet * 12
  end

  def self.miles_to_centimeters(miles)
    inches = miles_to_inches(miles)
    inches * 2.54
  end
end

puts LengthConversions.miles_to_feet(100) # 528000
puts LengthConversions.miles_to_inches(200) # 12672000
puts LengthConversions.miles_to_centimeters(100) # 16093440.0
