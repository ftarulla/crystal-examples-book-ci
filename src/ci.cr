class Location
  getter x : Int32
  getter y : Int32

  def self.random
    Location.new(Random.rand(10), Random.rand(10))
  end

  def initialize(@x, @y)
  end

  def ==(other : self)
    @x == other.x && @y == other.y
  end
end

class World
  @living_cells : Array(Location)

  def self.empty
    World.new([] of Location)
  end

  def initialize
    initialize([] of Location)
  end

  def initialize(living_cells)
    @living_cells = living_cells
  end

  def set_living_at(a_location)
    @living_cells << a_location
  end

  def is_empty?
    @living_cells.size == 0
  end
end
