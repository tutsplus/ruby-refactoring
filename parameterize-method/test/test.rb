require 'minitest/autorun'
require 'minitest/spec'

require 'before' if ENV["BEFORE"]
require 'after' unless ENV["BEFORE"]

describe Student do
  if ENV["BEFORE"]

    it "has a first grade" do
      Student.new.first_term_grade.must_equal 10
    end
    it "has a second grade" do
      Student.new.second_term_grade.must_equal 11
    end
    it "has a third grade" do
      Student.new.third_term_grade.must_equal 12
    end

  else # AFTER

    it "has a first grade" do
      Student.new.term_grade(:first).must_equal 10
    end
    it "has a second grade" do
      Student.new.term_grade(:second).must_equal 11
    end
    it "has a third grade" do
      Student.new.term_grade(:third).must_equal 12
    end

  end
end
