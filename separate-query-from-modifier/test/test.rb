require 'minitest/autorun'
require 'minitest/spec'

require 'before' if ENV["BEFORE"]
require 'after' unless ENV["BEFORE"]

describe Post do
  
  before :each do
    POSTS.each { |post| post.unpublish }
  end

  if ENV["BEFORE"]
    it "is publishable and retrieves all unpublished posts count" do
      post = Post.find(1)
      post.publish.must_equal 3
    end

  else # AFTER

    it "is publishable" do
      post = Post.find(1)
      post.publish.must_equal true
    end

    it "retrieves all unpublished posts count" do
      Post.unpublished.must_equal 4
    end

  end
end
