require './body.rb'
require './system.rb'
require './star.rb'
require './moon.rb'
require './planets.rb'


sun = Star.new("Sun", 10, "G2 V")
# 1989 * 10**27 kg

moon = Moon.new("Moon", 0.5, 27.3, sun)
# 7342 * 10**19 kg

earth = Planet.new("Earth", 3, 24, 365)
# 5972.2 * 10**21 kg



mars = Planet.new("Mars", 2, 24.63, 686)
# 6417 * 10**20 kg

phobos = Moon.new("Phobos", 0.5, 0.32, mars)
# 1065.9 * 10**13 kg

deimos = Moon.new("Deimos", 0.5, 1.263, mars)
# 1476.2 * 10**12 kg

aldebaran = Star.new("Aldebaran", 15, "K5 III")
# ~1.5 times the solar mass

mw = System.new()
mw.add(sun)
mw.add(earth)
mw.total_mass # => 13

mw.add(moon)
mw.total_mass # => 13.5

mw.add(moon) # => error message that its already in the system

mw.add(mars)
mw.add(phobos)
mw.add(deimos)
mw.add(aldebaran)

mw.total_mass # => 31.5

Planet.all(mw)
Moon.all(mw)

alpha_centauri = System.new()
alpha_centauri.add(sun)
sun2 = Star.new("Sun2", 10, "G78")
jupiter = Planet.new("Jupiter", 9, 44, 887)
grand_pluto = Planet.new("Plutooo", 7, 30, 495)

moon2 = Moon.new("Moon2", 2, 33.5, grand_pluto)
earth2 = Planet.new("Earth2", 4.5, 24.5, 370)
alpha_centauri.add(sun2)
alpha_centauri.add(jupiter)
alpha_centauri.total_mass # => 29
alpha_centauri.add(grand_pluto)
alpha_centauri.add(moon2)
alpha_centauri.add(earth2)

alpha_centauri.total_mass # => 42.5
puts "All the mass in the system is #{ System.grand_mass } " # => 74
