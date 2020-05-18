require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#### CULTS CULTS CULTS ####

jonestown = Cult.new("Jonestown", "Venezuela", "Kool-aid, yum!", 1955)
flat_earth = Cult.new("YT side projects", "Online", "we are not well rounded", 1202)
anti_vaxx = Cult.new("GOOP Lab", "California", "Don't confuse yr degree with my Google search.", 2005)

#### FOLLOWERS FOLLOWERS FOLLOWERS ####

dan = Follower.new("Dan", 35, "Outside is scary!")
tom = Follower.new("tom", 32, "peas!")
pat = Follower.new("pat", 29, "sphincter says wha?")
jimmy  = Follower.new("jimmy", 39, "abcd")

#### OATHS OATHS OATHS ####

blood_oath_one = BloodOath.new(dan, jonestown, 1999)
blood_oath_two = BloodOath.new(tom, flat_earth, 1980)
blood_oath_three = BloodOath.new(pat, anti_vaxx, 1990)
blood_oath_four = BloodOath.new(dan, flat_earth, 1984)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
