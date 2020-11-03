# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
wendler = Lifter.new("wendler", 1098)
ripetoe = Lifter.new("ripetoe", 976)
baker = Lifter.new("baker", 874)

golds_gym = Gym.new("golds_gym")
blink_fitness = Gym.new("blink_fitness")

m1 = Membership.new(50, golds_gym, wendler)
m2 = Membership.new(60, blink_fitness, ripetoe)
m3 = Membership.new(40, blink_fitness, baker)


binding.pry

puts "Gains!"
