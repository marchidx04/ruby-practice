require "time"

puts Time.parse("2023-01-01").class

puts Time.strptime("01-01-2023", "%d-%m-%Y")
