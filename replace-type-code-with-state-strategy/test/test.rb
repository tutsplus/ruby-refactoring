require 'minitest/autorun'
require 'minitest/spec'
require 'minitest/pride'

require 'before' if ENV["BEFORE"]
require 'after' unless ENV["BEFORE"]

USERS = [
  User.new("Regular user", :password, password: "secret"),
  User.new("Public key user", :public_key, key_location: "assets/id_rsa.pub"),
  User.new("OAuth user", :oauth, provider: :twitter)
]

describe User do
  it "can log in by default via user/pass combo" do
    assert User.login("Regular user", password: "secret")
  end

  it "can log in via a public key" do
    assert User.login("Public key user")
  end

  it "can log in via oauth" do
    assert User.login("OAuth user")
  end
end
