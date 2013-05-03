require 'minitest/spec'
require 'minitest/autorun'

require 'before' if ENV["BEFORE"]
require 'after' unless ENV["BEFORE"]

describe MalePerson do
  it "has a full name" do
    MalePerson.new("John", "Smith").full_name.must_equal "John Smith"
  end
end

describe MalePerson do
  it "has a full name" do
    FemalePerson.new("Michelle", "Smith").full_name.must_equal "Michelle Smith"
  end
end
