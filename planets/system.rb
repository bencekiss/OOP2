require './body.rb'

class System
  attr_reader :bodies

  @@total = 0

  def initialize
    @bodies = []
  end

  def add(b)
    if @bodies.empty?
      @bodies << b
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
