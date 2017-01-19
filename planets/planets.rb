
class Planet < Body
  @@num_total = 0

  def self.num_total
    puts "There are #{ @@num_total } known planets."
    @@num_total
  end

  def self.all(system)
    planets = 0
    system.bodies.each do |body|
      if body.class == Planet
        planets += 1
      end
    end
    puts "There are #{ planets } planets in the #{ system } system."
    return planets
  end

  def initialize(name, mass, day, year)
    super(name, mass)
    # how many hours does it take for the planet to rotate around once
    @day = day
    # how many days does it take for the planet to orbit the sun once
    @year = year
    @@num_total += 1
  end
end
