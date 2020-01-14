require "./spec_helper"
require "mysql"

it "connects to the database" do
  DB.connect ENV["DATABASE_URL"] do |cnn|
    cnn.query("SELECT 'foo'", as: String). should eq "foo"
  end
end
