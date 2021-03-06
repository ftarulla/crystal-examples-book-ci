require "mysql"

class Location
  getter x : Int32
  getter y : Int32

  def self.random
    Location.new(Random.rand(10), Random.rand(10))
  end

  def initialize(@x, @y)
  end
end

class World
  @living_cells : Array(Location)

  def self.empty
    new
  end

  def initialize(living_cells = [] of Location)
    @living_cells = living_cells
  end

  def set_living_at(a_location)
    @living_cells << a_location
  end

  def is_empty?
    @living_cells.size == 0
  end

  def save
    DB.connect ENV["DATABASE_URL"] do |cnn|
      cnn.exec("insert into worlds (living_cells) values (?);", @living_cells.size)
    end
  end
end
