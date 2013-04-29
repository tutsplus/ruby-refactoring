require 'minitest/spec'
require 'minitest/autorun'

require 'before' if ENV["BEFORE"]
require 'after' unless ENV["BEFORE"]

describe Cuboid do
  it "has a volume" do
    Cuboid.new(2,3,4).volume.must_equal 24
  end
end
