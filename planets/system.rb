require './body.rb'

class System
  attr_reader :bodies

  @@grand_mass= 0
  @@total =0

  def self.grand_mass
    @@grand_mass
  end

  def initialize
    @bodies = []
  end

  def add(b)
    if @bodies.empty?
      @bodies << b
      @@grand_mass += b.mass
    else
      ispartof = false
      @bodies.each do |body|
        if body.name == b.name
          error = "Sorry, #{ b.name } is in the system already."
          puts error
          return error
        else
          ispartof = true
        end
      end
      if ispartof
        @bodies << b
        @@grand_mass += b.mass
      end
    end
    @bodies
  end

  def total_mass
    t = 0
    @bodies.each {|body| t += body.mass}
    @@total = t
    @@total
  end

end
