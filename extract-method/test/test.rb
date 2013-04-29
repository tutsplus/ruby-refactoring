require 'minitest/spec'
require 'minitest/autorun'

require 'before' if ENV["BEFORE"]
require 'after' unless ENV["BEFORE"]

describe Post do
  before do
    @date = Time.new(2014,02,28)
    @post = Post.new("Fragmented Class", @date)
  end

  describe "when requested a condensed format" do

    it "shows the post's title" do
      @post.condensed_format.must_include "Fragmented Class"
    end

    it "shows the post's date" do
      @post.condensed_format.must_include "2014/02/28"
    end

  end

  describe "when requested a full format" do
    
    it "shows the post's title" do
      @post.full_format.must_include "Fragmented Class"
    end

    it "shows the post's date" do
      @post.full_format.must_include "2014/02/28"
    end

  end
end
