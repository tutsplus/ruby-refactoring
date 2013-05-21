require 'minitest/autorun'
require 'minitest/spec'

require 'before' if ENV["BEFORE"]
require 'after' unless ENV["BEFORE"]

describe UserService do
  it "can log in" do
    if ENV["BEFORE"]
      assert UserService.login("josemota", "secret")
    else
      assert UserService.sign_in("josemota", "secret")
    end
  end
end
