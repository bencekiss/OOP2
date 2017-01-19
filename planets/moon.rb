require './body.rb'

class Moon < Body
  @@num_total = 0

  def self.num_total
    puts "There are #{ @@num_total } known moons."
    @@num_total
  end

  def self.all(system)
    moons = 0
    system.bodies.each do |body|
      if body.class == Moon
        moons += 1
      end
    end
    puts "There are #{ moons } moons in the #{ system } system."
    return moons
  end




  attr_reader :planet
  def initialize(name, mass, month, planet)

    super(name, mass)
    # how many days it takes for the moon to orbit its planet
    @month = month
    # which planet they orbit
    @planet = planet
  end

end
