require './body.rb'

class Star < Body
  @@num_total = 0

  def self.num_total
    puts "There are #{ @@num_total } known stars."
    @@num_total
  end

  def self.all(system)
    stars = 0
    system.bodies.each do |body|
      if body.class == Star
        stars += 1
      end
    end
    puts "There are #{ stars } stars in the #{ system } system."
    return stars
  end


  def initialize(name, mass, type)
    super(name, mass)
    @type = type
    @@num_total += 1
  end

end
