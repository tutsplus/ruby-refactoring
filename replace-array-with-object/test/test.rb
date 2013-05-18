require 'minitest/autorun'
require 'minitest/spec'

require 'before' if ENV["BEFORE"]
require 'after' unless ENV["BEFORE"]

describe Cart do
  it "has a list of items" do
    Cart.new([
      [ "Sweater"   , "Pink" , 5.0  ],
      [ "Trousers"  , "Blue" , 8.0  ],
      [ "Golf Club" , "Gray" , 12.0 ]
    ]).total.must_equal 25.0
  end
end
