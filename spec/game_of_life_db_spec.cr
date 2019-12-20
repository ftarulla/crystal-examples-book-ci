require "./spec_helper"

describe "an empty world" do
  it "should be persisted" do
    World.empty.save
  end
end
