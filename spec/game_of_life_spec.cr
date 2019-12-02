require "./spec_helper"

describe "a new world" do
  it "should be empty" do
    world = World.new
    world.is_empty?.should be_true
  end
end

describe "an empty world" do
  it "should not be empty after adding a cell" do
    world = World.empty
    world.set_living_at(Location.random)
    world.is_empty?.should be_false
  end

  it "should be persisted" do
    World.empty.save
  end
end
