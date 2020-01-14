require "./spec_helper"
require "mysql"

it "connects to the database" do
  DB.open ENV["DATABASE_URL"] do |db|
    db.query("SELECT 'foo'", as: String).should eq "foo"
  end
end
